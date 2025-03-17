import 'dart:async';
import 'dart:developer';

import 'usecase.dart';
import 'usecase_result.dart';

abstract class UseCaseExecutor {
  static FutureOr<UseCaseResult<T>> perform<T>(UseCase<T> runner) async {
    try {
      FutureOr<T> result =  runner.perform();
      if (result is Future<T>) {
        return UseCaseResult.success(data: await result);
      }else {
        return UseCaseResult.success(data: result);
      }
    }catch (e,stacktrace) {
      log('Error while executing ${runner.runtimeType}',name: 'Perform Error',error: e,stackTrace: stacktrace);
      return UseCaseResult.failure(error: e);
    }
  }
}
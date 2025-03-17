import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'request.dart';
import 'usecase.dart';

abstract class ConsumerUseCase<R extends Request> implements UseCase<void> {

  R? _request;

  @override
  FutureOr<void> perform() {
    assert(_request != null, throw Exception('set request parameter by calling `setRequestParam` or use appropriate usecase '));
    return task(_request!);
  }

  @protected
  FutureOr<void> task(R request);

  void setRequestParam(R request) => _request = request;

}
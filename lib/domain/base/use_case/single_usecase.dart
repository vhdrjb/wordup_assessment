import 'dart:async';

import 'package:flutter/material.dart';

import 'request.dart';
import 'usecase.dart';

abstract class SingleUseCase<T, R extends Request> implements UseCase<T> {
  R? _request;

  @override
  FutureOr<T> perform() {
    assert(
      _request != null,
      throw Exception(
        'set request parameter by calling `setRequestParam` or use appropriate usecase ',
      ),
    );
    return task(_request!);
  }

  @protected
  FutureOr<T> task(R request);

  void setRequestParam(R request) => _request = request;
}

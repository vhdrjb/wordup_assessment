import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'routing_param.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  BaseBloc(super.initialState);

  Object? _extra;

  Map<String, dynamic>? _pathParams;
  Map<String, String>? _queryParams;


  RoutingParam get routingParam {
    return RoutingParam(
        pathParam: _pathParams ?? {},
        queryParam: _queryParams ?? {},
        extra: _extra);
  }

  void updateRouting(
      {Map<String, dynamic>? pathParameters,
        Map<String, String>? queryParameters,
        Object? extra}) {
    _extra = extra;
    _pathParams = pathParameters;
    _queryParams = queryParameters;
  }

}

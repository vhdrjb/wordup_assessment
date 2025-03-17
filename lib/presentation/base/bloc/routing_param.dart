class RoutingParam {
  final Map<String, dynamic> pathParam;
  final Map<String, String> queryParam;
  final Object? extra;

  const RoutingParam({
    required this.pathParam,
    required this.queryParam,
    this.extra,
  });
}

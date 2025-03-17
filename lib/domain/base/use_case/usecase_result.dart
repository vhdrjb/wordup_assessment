class UseCaseResult<T> {
  final T? _data;
  final dynamic error;

  UseCaseResult._({required T? data, required this.error}) : _data = data;

  factory UseCaseResult.success({required T data}) {
    return UseCaseResult._(data: data, error: null);
  }

  factory UseCaseResult.failure({required dynamic error}) {
    return UseCaseResult._(data: null, error: error);
  }

  bool get hasError => error != null;

  bool get hasData => _data != null;

  T get data => _data!;
}

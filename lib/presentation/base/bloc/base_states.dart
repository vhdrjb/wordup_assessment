interface class ListenableStates {}

class MoveState extends ListenableStates {
  final String path;
  final Map<String, String>? queries;
  final dynamic extra;

  MoveState({
    required this.path,
    this.queries,
    this.extra,
  });
}

class ReplaceState extends MoveState {
  ReplaceState({required super.path, super.queries, super.extra});
}

class ReturnState extends ListenableStates {
  final dynamic payload;

  ReturnState({
    this.payload,
  });
}

import 'dart:async';

abstract class UseCase<T> {
  const UseCase();

  FutureOr<T> perform();
}

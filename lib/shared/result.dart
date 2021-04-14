class Result<T> {
  const Result();
  factory Result.success([T? value]) => Success(value);
  factory Result.failure([String message = ""]) => Failure(message);

  T? get value => (this as Success).value;
  String get message => (this as Failure).message;
}

class Success<T> extends Result<T> {
  final T? value;
  Success(this.value);
}

class Failure<T> extends Result<T> {
  final String message;
  Failure(this.message);
}

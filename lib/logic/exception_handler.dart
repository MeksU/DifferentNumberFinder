abstract class ExceptionHandler implements Exception {
  final String message;
  const ExceptionHandler(this.message);

  @override
  String toString() => message;
}

class InvalidInputException extends ExceptionHandler {
  const InvalidInputException()
      : super('Użyj liczb całkowitych oddzielonych przecinkami');
}

class TooFewNumbersException extends ExceptionHandler {
  const TooFewNumbersException()
      : super('Podaj co najmniej 3 liczby');
}

class NoDifferentFoundException extends ExceptionHandler {
  const NoDifferentFoundException()
      : super('Brak wartości odstającej w podanym zbiorze');
}
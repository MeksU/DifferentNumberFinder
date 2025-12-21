abstract class ExceptionHandler implements Exception {
  const ExceptionHandler();
}

class InvalidInputException extends ExceptionHandler {
  const InvalidInputException();
}

class TooFewNumbersException extends ExceptionHandler {
  const TooFewNumbersException();
}

class NoDifferentFoundException extends ExceptionHandler {
  const NoDifferentFoundException();
}
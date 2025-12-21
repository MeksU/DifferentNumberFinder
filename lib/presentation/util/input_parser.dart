import '../../domain/exceptions/exception_handler.dart';

class InputParser {
  List<int> parse(String input) {
    try {
      final numbers = input
          .split(',')
          .map((e) => int.parse(e.trim()))
          .toList();

      return numbers;
    } catch (_) {
      throw const InvalidInputException();
    }
  }
}
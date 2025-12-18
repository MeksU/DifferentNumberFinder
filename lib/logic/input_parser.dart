import 'exception_handler.dart';

class InputParser {
  static List<int> parse(String input) {
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
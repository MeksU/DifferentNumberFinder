import '../../domain/service/different_finder_service.dart';
import '../../domain/exceptions/exception_handler.dart';

class DifferentFinderServiceImpl implements DifferentFinderService {
  @override
  int find(List<int> numbers) {
    if (numbers.length < 3) {
      throw const TooFewNumbersException();
    }

    final evenCount = numbers.take(3).where((n) => n.isEven).length;
    final shouldBeEven = evenCount >= 2;

    return numbers.firstWhere(
      (n) => n.isEven != shouldBeEven,
      orElse: () => throw const NoDifferentFoundException(),
    );
  }
}
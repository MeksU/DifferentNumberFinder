import 'package:flutter/foundation.dart';
import 'package:flutter_app/domain/service/different_finder_service.dart';
import '../util/input_parser.dart';
import '../../domain/exceptions/exception_handler.dart';

class DifferentNumberProvider extends ChangeNotifier {
  final InputParser _parser;
  final DifferentFinderService _finder;

  int? _result;
  ExceptionHandler? _error;

  int? get result => _result;
  ExceptionHandler? get error => _error;

  DifferentNumberProvider(this._parser, this._finder);

  void search(String input) {
    try {
      _result = _finder.find(_parser.parse(input));
      _error = null;
    } on ExceptionHandler catch (e) {
      _error = e;
      _result = null;
    }
    notifyListeners();
  }
}

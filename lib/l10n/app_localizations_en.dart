// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appBarTitle => 'Different Number Finder';

  @override
  String get search => 'Search';

  @override
  String get inputLabel => 'Enter integers separated by commas';

  @override
  String get inputHint => 'e.g. 2,4,0,100,4,11,2602,36';

  @override
  String get resultAppBarTitle => 'Result';

  @override
  String get invalidInputException => 'Use comma-separated integers';

  @override
  String get tooFewNumbersException => 'Enter at least 3 numbers';

  @override
  String get noDifferentFoundException => 'No outlier found in the given set';

  @override
  String get unknownException => 'Unknown error';
}

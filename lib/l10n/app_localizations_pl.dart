// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appBarTitle => 'Wyszukiwanie wartości odstającej';

  @override
  String get search => 'Wyszukaj';

  @override
  String get inputLabel => 'Wpisz liczby całkowite po przecinkach';

  @override
  String get inputHint => 'np. 2,4,0,100,4,11,2602,36';

  @override
  String get resultAppBarTitle => 'Wynik';

  @override
  String get invalidInputException => 'Użyj liczb całkowitych oddzielonych przecinkami';

  @override
  String get tooFewNumbersException => 'Podaj co najmniej 3 liczby';

  @override
  String get noDifferentFoundException => 'Brak wartości odstającej w podanym zbiorze';

  @override
  String get unknownException => 'Nieznany błąd';
}

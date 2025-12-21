import '../../l10n/app_localizations.dart';
import '../../domain/exceptions/exception_handler.dart';

extension AppExceptionL10n on ExceptionHandler {
  String exceptionMessage(AppLocalizations l10n) {
    if (this is InvalidInputException) {
      return l10n.invalidInputException;
    }
    if (this is TooFewNumbersException) {
      return l10n.tooFewNumbersException;
    }
    if (this is NoDifferentFoundException) {
      return l10n.noDifferentFoundException;
    }
    return l10n.unknownException;
  }
}
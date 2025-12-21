import 'package:flutter/material.dart';
import 'package:flutter_app/domain/service/different_finder_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/di/locator.dart';
import 'l10n/app_localizations.dart';
import 'presentation/providers/different_number_provider.dart';
import '../presentation/util/input_parser.dart';
import 'app_router.dart';

void main() {
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DifferentNumberProvider(
            getIt<InputParser>(),
            getIt<DifferentFinderService>(),
          ),
        ),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Different Number Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return const Locale('en');

        for (final supported in supportedLocales) {
          if (supported.languageCode == locale.languageCode) {
            return supported;
          }
        }
        return const Locale('en');
      },
      routerConfig: AppRouter.router
    );
  }
}
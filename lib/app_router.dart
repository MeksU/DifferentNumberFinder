import 'package:go_router/go_router.dart';
import '../presentation/ui/main_screen.dart';
import '../presentation/ui/result_screen.dart';

class AppRouter {
  AppRouter._(); // prywatny konstruktor, żeby nie instancjonować klasy

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/result',
        builder: (context, state) => const ResultScreen(),
      ),
    ],
  );
}

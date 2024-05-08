import 'package:go_router/go_router.dart';
import 'package:study_application/screens/counter_screen/counter_screen.dart';
import 'package:study_application/screens/favorites_screen.dart';
import 'package:study_application/screens/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: FavoritesScreen.routeName,
          builder: (context, state) {
            return const FavoritesScreen();
          },
        ),
        GoRoute(
          path: CounterScreen.routeName,
          builder: (context, state) {
            return CounterScreen();
          },
        ),
      ],
    ),
  ],
);
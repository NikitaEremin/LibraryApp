import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_application/router/router.dart';
import 'models/favorites.dart';

void main() {
  runApp(const TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}

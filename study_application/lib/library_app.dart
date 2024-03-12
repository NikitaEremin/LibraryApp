import 'package:flutter/material.dart';
import 'package:study_application/router/router.dart';
import 'package:study_application/theme/appTheme.dart';

class LibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LibraryApp',
      routes: routes,
      theme: appTheme.themeData,
    );
  }

  const LibraryApp({super.key});
}

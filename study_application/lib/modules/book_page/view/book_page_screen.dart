import 'package:flutter/material.dart';

class BookPageScreen extends StatefulWidget {
  const BookPageScreen({super.key});

  @override
  State<BookPageScreen> createState() => _BookPageScreenState();
}

class _BookPageScreenState extends State<BookPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookCardScreen'),
      ),
    );
  }
}

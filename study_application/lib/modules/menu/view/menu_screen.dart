import 'package:flutter/material.dart';

import '../../book_list/view/book_list_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedTab = 0;

  void _onTap(index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  static final _widgets = <Widget>[
    const BookListScreen(),
    const Center(child: Text('Фильмы')),
    const Center(child: Text('Избранное'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          icon: const Icon(Icons.chevron_left, size: 35),
        ),
        title: const Text('Menu screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: _widgets.elementAt(_selectedTab)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: 'Книги'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: 'Фильмы'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Избранное'),

        ],
      ),
    );
  }
}

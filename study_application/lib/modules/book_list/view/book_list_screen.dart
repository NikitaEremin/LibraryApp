import 'package:flutter/material.dart';
import 'package:study_application/modules/book_list/widgets/book_list_card.dart';
import 'package:study_application/repositories/book_list_repostirory/book_list_repo.dart';

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BookListCard(
          bookTitle: 'Название книги',
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
          BookListRepository().getBookList();
        },
        child: Icon(Icons.download),
      ),
    );
  }
}

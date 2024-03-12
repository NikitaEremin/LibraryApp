import 'package:dio/dio.dart';
import 'package:study_application/repositories/models/book.dart';

class BookListRepository {

  Future<void> getBookList() async {
    final response = await Dio().get('https://openlibrary.org/search.json?q=+код+да+винчи');
    final data = response.data as Map<String, dynamic>;
    final bookData = data['docs'][0] as Map<String, dynamic>;
    final bookCover = bookData['cover_i'];
    // final quantity = data['numFound'] as int ;
    // final title = bookData[0]['title'];
    // final author = bookData[0]['author_name'][0];
    // final cover = bookData[0]['cover_i'];
    print(bookCover);
    print(bookData.entries);
    final bookList = bookData.entries.map((e) => Book(title: e.value['title'], authors:e.value['author_name'], cover: e.value['cover_i'])).toList();
    // print(bookList);
    // print(booksList[0]['author_name']);

    // print(bookList);
  }
}
import 'package:study_application/modules/menu/view/menu_screen.dart';
import '../modules/auth/view/auth_screen.dart';
import '../modules/book_list/view/book_list_screen.dart';
import '../modules/book_page/view/book_page_screen.dart';

final routes = {
  '/': (context) => const AuthScreen(),
  '/menu_screen': (context) => const MenuScreen(),
  '/book_page': (context) => const BookPageScreen(),
  '/menu_screen/book_list_screen': (context) => const BookListScreen(),
};
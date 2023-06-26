import 'package:flutter_tugas1/data/model/book_modal.dart';

abstract class BookRepository {
  Future<List<Book>> getBooks();
}

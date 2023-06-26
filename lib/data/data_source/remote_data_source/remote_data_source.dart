import 'package:dio/dio.dart';
import 'package:flutter_tugas1/data/model/book_modal.dart';
import 'package:flutter_tugas1/data/model/book_response.dart';

class BookRemoteDataSource {
  final Dio client;
  const BookRemoteDataSource({required this.client});

  Future<List<Book>> getBooks() async {
    try {
      const url = 'https://api.itbook.store/1.0/new';
      final response = await client.get(url);
      BookResponse decodeResponse = BookResponse.fromJson(response.data);
      List<Book> ListBooks = decodeResponse.books ?? [];

      return ListBooks;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}

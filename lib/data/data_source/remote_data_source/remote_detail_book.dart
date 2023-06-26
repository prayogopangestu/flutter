import 'package:dio/dio.dart';
import 'package:flutter_tugas1/data/model/detail_book.dart';
import 'package:flutter_tugas1/data/model/detail_book_source.dart';

class BookDetailRemoteDataSource {
  final Dio client1;
  const BookDetailRemoteDataSource({required this.client1});

  Future<List<Book1>> getBooks1() async {
    try {
      const url = 'https://api.itbook.store/1.0/search/Flutter%20Developer';
      final source = await client1.get(url);
      SourceBook decodeSource = SourceBook.fromJson(source.data);
      List<Book1> ListBooks1 = decodeSource.books1 ?? [];

      return ListBooks1;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}

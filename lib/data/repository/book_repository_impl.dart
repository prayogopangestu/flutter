import 'package:flutter_tugas1/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:flutter_tugas1/data/data_source/remote_data_source/remote_detail_book.dart';
import 'package:flutter_tugas1/data/model/book_modal.dart';
import 'package:flutter_tugas1/data/model/detail_book.dart';
import 'package:flutter_tugas1/domain/repository/book1_repository.dart';
import 'package:flutter_tugas1/domain/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;
  const BookRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Book>> getBooks() async => await remoteDataSource.getBooks();
}

// SOURCE
// class Book1RepositoryImpl implements Book1Repository {
//   final BookDetailRemoteDataSource detailRemoteDataSource;

//   const Book1RepositoryImpl({required this.detailRemoteDataSource});

//   @override
//   Future<List<Book1>> getBook1() async =>
//       await detailRemoteDataSource.getBooks1();
// }

import 'package:flutter_tugas1/data/model/detail_book.dart';
import 'package:flutter_tugas1/domain/repository/book1_repository.dart';

class GetBook1UseCase {
  final Book1Repository repository;
  const GetBook1UseCase({required this.repository});

  Future<List<Book1>> call() async => await repository.getBook1();
}

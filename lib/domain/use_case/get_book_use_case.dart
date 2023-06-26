import 'package:flutter_tugas1/data/model/book_modal.dart';
import 'package:flutter_tugas1/domain/repository/book_repository.dart';

class GetBooksUseCase {
  final BookRepository repository;

  const GetBooksUseCase({required this.repository});

  Future<List<Book>> call() async => await repository.getBooks();
}

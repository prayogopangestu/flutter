import 'package:flutter_tugas1/data/model/book_modal.dart';
import 'package:flutter_tugas1/domain/use_case/get_book_use_case.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GetBooksUseCase getBooksUseCase;
  HomeController({required this.getBooksUseCase});

  Rx<List<Book>> listBooks = Rx([]);

  void getBooks() async {
    final _listBooks = await getBooksUseCase.call();
    listBooks(_listBooks);
    update();
  }
}

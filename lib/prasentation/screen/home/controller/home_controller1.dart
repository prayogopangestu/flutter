import 'package:flutter_tugas1/data/model/detail_book.dart';
import 'package:flutter_tugas1/domain/use_case/get_book1_use_case.dart';
import 'package:get/get.dart';

class HomeController1 extends GetxController {
  final GetBook1UseCase getBook1UseCase;
  HomeController1({required this.getBook1UseCase});

  Rx<List<Book1>> listbooks1 = Rx([]);

  void getbooks1() async {
    final _listbooks1 = await getBook1UseCase.call();
    listbooks1(_listbooks1);
    update();
  }
}

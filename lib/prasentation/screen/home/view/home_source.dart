import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tugas1/data/data_source/remote_data_source/remote_detail_book.dart';
import 'package:flutter_tugas1/data/repository/book_repo_impl.dart';
import 'package:flutter_tugas1/domain/use_case/get_book1_use_case.dart';
import 'package:flutter_tugas1/prasentation/screen/home/controller/home_controller1.dart';
import 'package:get/get.dart';

class homesource extends StatelessWidget {
  homesource({super.key});

  final homeController1 = HomeController1(
    getBook1UseCase: GetBook1UseCase(
      repository: Book1RepositoryImpl(
        detailRemoteDataSource: BookDetailRemoteDataSource(client1: Dio()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController1>(
          init: homeController1,
          initState: (state1) => homeController1.getbooks1(),
          builder: (state1) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state1.listbooks1.value.length,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state1.listbooks1.value[index].title ?? 'no title',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(state1.listbooks1.value[index].subtitle ??
                            'no Subtitle'),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

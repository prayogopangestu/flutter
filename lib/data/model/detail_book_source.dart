import 'package:flutter_tugas1/data/model/detail_book.dart';

class SourceBook {
  final String? error;
  final String? total;
  final String? page;
  final List<Book1>? books1;

  SourceBook({
    this.error,
    this.total,
    this.page,
    this.books1,
  });

  factory SourceBook.fromJson(Map<String, dynamic> json) => SourceBook(
        error: json["error"],
        total: json["total"],
        page: json["page"],
        books1: json["books"] == null
            ? []
            : List<Book1>.from(json["books"]!.map((x) => Book1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "total": total,
        "page": page,
        "books": books1 == null
            ? []
            : List<dynamic>.from(books1!.map((x) => x.toJson())),
      };
}

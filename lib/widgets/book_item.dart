import 'package:flutter/material.dart';

import '../detail_page.dart';
import '../model.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => DetailPage(book: book))),
      child: Container(
        height: book.height,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(book.imgUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}

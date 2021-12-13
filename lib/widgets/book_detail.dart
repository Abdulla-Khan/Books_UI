import 'package:book_ui/const.dart';
import 'package:book_ui/model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.type,
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(book.name,
              style: TextStyle(fontSize: 24, color: kFont, height: 1.2)),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Pulished from ',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                TextSpan(
                    text: book.publisher,
                    style: TextStyle(
                      color: kFont,
                      fontWeight: FontWeight.w500,
                    ))
              ])),
              Text(
                DateFormat.yMMMd().format(book.date),
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

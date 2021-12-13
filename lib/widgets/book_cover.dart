import 'package:book_ui/const.dart';
import 'package:book_ui/model.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 20),
        height: 250,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                color: Colors.grey.shade200,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  child: Image.asset(
                    book.imgUrl,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
                left: 190,
                bottom: 20,
                child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange,
                    ),
                    child: Icon(
                      Icons.info_outlined,
                      color: Colors.white,
                      size: 25,
                    ))),
            Positioned(
                left: 240,
                bottom: 20,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kFont,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Audio Book',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

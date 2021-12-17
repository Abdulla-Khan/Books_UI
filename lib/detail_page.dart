import 'package:book_ui/model.dart';
import 'package:book_ui/widgets/book_cover.dart';
import 'package:book_ui/widgets/book_detail.dart';
import 'package:book_ui/widgets/book_review.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class DetailPage extends StatefulWidget {
  final Book book;
  const DetailPage({Key? key, required this.book}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: kFont,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookDetail(book: widget.book),
            BookCover(book: widget.book),
            BookReview(book: widget.book)
          ],
        ),
      ),
      bottomNavigationBar: buildBottom(),
    );
  }

  Widget buildBottom() {
    final bottoms = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 56,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => setState(() {
                  bottomIndex = index;
                }),
                child: Container(
                  width: (MediaQuery.of(context).size.width - 40) / 5,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: bottomIndex == index
                      ? BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 3, color: Colors.orange)))
                      : null,
                  child: Icon(
                    bottoms[index],
                    size: 30,
                    color: bottomIndex == index ? kFont : Colors.grey,
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: bottoms.length),
    );
  }
}

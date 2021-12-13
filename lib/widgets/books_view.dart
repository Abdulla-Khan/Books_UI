import 'package:book_ui/model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'book_item.dart';

class BookView extends StatelessWidget {
  BookView(
      {Key? key,
      required this.selected,
      required this.controller,
      required this.callBack})
      : super(key: key);
  final int selected;
  final PageController controller;
  final Function callBack;

  @override
  final bookList = Book.generateBooks();
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
          controller: controller,
          onPageChanged: (index) => callBack(index),
          children: [
            StaggeredGridView.countBuilder(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: bookList.length,
                crossAxisCount: 4,
                itemBuilder: (_, index) => BookItem(book: bookList[index]),
                staggeredTileBuilder: (_) => StaggeredTile.fit(2)),
            StaggeredGridView.countBuilder(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: bookList.length,
                crossAxisCount: 4,
                itemBuilder: (_, index) => BookItem(book: bookList[index]),
                staggeredTileBuilder: (_) => StaggeredTile.fit(2)),
          ]),
    );
  }
}

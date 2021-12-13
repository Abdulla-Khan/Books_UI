import 'package:book_ui/const.dart';
import 'package:flutter/material.dart';

class CTabBar extends StatelessWidget {
  final int selected;
  final Function callback;
  final tabs = ['Ebook', 'Audio Book'];
  CTabBar({Key? key, required this.selected, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 5),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width - 40) / 2 - 10,
                  decoration: BoxDecoration(
                    color:
                        selected == index ? Colors.white : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    tabs[index],
                    style: TextStyle(color: kFont, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: tabs.length),
    );
  }
}

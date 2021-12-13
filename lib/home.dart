import 'package:book_ui/const.dart';
import 'package:book_ui/widgets/books_view.dart';
import 'package:book_ui/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  var bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_rounded),
          color: kFont,
        ),
        title: Text(
          'All Books',
          style: TextStyle(
            color: kFont,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: kFont,
          ),
        ],
      ),
      body: Column(
        children: [
          CTabBar(
              selected: tabIndex,
              callback: (int index) {
                setState(() {
                  tabIndex = index;
                });
                controller.jumpToPage(index);
              }),
          Expanded(
              child: BookView(
            callBack: (int value) {
              setState(() {
                tabIndex = value;
              });
            },
            selected: tabIndex,
            controller: controller,
          ))
        ],
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

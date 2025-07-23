import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(Colors.pink, 'Cute 1'),
    ListItem(const Color.fromARGB(255, 255, 88, 143), 'Cute 2'),
    ListItem(const Color.fromARGB(255, 245, 119, 161), 'Cute 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'List Separated',
        body: SizedBox(
            child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.pink,
            );
          },
          itemBuilder: (context, index) {
            return Container(
              color: itemList[index].color,
              height: 300,
              width: 200,
              margin: EdgeInsets.all(10),
              child: Center(child: Text(itemList[index].text)),
            );
          },
          itemCount: itemList.length,
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ListViewTiga extends StatelessWidget {
  ListViewTiga({super.key});

  final List<Color> colorList = [
    Colors.pink,
    const Color.fromARGB(255, 255, 88, 143),
    const Color.fromARGB(255, 245, 119, 161)
  ];
  final List<String> cuteList = [
    'Cute 1',
    'Cute 2',
    'Cute 3',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'List View Builder',
        body: SizedBox(
          width: double.infinity,
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              return Container(
                color: colorList[index],
                height: 300,
                width: 200,
                margin: EdgeInsets.all(10),
                child: Text(cuteList[index]),
              );
            },
          ),
        ));
  }
}

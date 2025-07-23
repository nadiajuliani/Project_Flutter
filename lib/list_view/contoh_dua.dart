import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ListViewDua extends StatelessWidget {
  const ListViewDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Dua',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.pink[(index + 1) * 100],
            height: 200,
            width: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.pink,
            height: 200,
            width: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Color.fromARGB(255, 255, 76, 136),
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: const Color.fromARGB(255, 226, 100, 142),
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}

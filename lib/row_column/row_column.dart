import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row Column',
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.call), Text('Call')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.navigation), Text('Route')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.share), Text('Share')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

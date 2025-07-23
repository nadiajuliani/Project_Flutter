import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(20),
        color: Colors.pink,
        child: Center(
          child: Text(
            'Hello Flutter!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

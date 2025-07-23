import 'package:flutter/material.dart';
import 'package:nanad/container/dua.dart';
import 'package:nanad/container/satu.dart';
import 'package:nanad/main_layout.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Tiga',
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.green, Colors.yellow, Colors.orange],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [
              BoxShadow(color: Colors.black26, spreadRadius: 4),
            ],
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.grey,
                  const Color.fromARGB(255, 233, 107, 149)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: [
                BoxShadow(color: Colors.black26, spreadRadius: 4),
              ],
            ),
            child: Center(
              child: ElevatedButton(
                child: Text('Click Me!'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerDua()),
                  );
                },
              ),
            ),
          )),
    );
  }
}

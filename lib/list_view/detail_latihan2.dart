import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class DetailLatihan2 extends StatelessWidget {
  final String name;
  final String gender;
  final String image;
  final String point;
  final String level;
  final String bio;
  final String zodiac;

  DetailLatihan2({
    required this.name,
    required this.gender,
    required this.image,
    required this.point,
    required this.level,
    required this.bio,
    required this.zodiac,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: name,
        body: SafeArea(
            child: Container(
          color: const Color.fromARGB(255, 109, 164, 209),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Center(child: Text("$name - $gender")),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(height: 280, child: Text(bio)),
            ],
          ),
        )));
  }
}

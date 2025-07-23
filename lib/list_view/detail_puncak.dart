import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class DetailPuncakGunung extends StatelessWidget {
  final String name;
  final String kota;
  final String image;
  final String desc;

  DetailPuncakGunung({
    required this.name,
    required this.kota,
    required this.image,
    required this.desc,
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
              Center(child: Text("$name - $kota")),
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
              Container(height: 280, child: Text(desc)),
            ],
          ),
        )));
  }
}

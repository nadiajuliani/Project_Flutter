import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Belajar Flutter'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text(
            'Selamat Belajar Flutter!',
            style: TextStyle(
                fontSize: 24,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}

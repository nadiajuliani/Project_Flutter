import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Satu',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Makanan Kesukaan', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Text(
            'Makanan Ku',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 16),

          // Baris pertama - 2 gambar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2017/06/02/18/24/pasta-2366521_1280.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),

          SizedBox(height: 16),

          // Baris kedua - 3 gambar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2016/11/21/15/47/salad-1844898_1280.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2014/12/21/23/28/recipe-575434_1280.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

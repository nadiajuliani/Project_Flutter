import 'package:flutter/material.dart';
import 'package:nanad/list_view/detail_latihan2.dart';
import 'package:nanad/main_layout.dart';

class Latihan2 extends StatelessWidget {
  Latihan2({super.key});
  final List<Map<String, dynamic>> latihanData = [
    {
      'name': 'Khansa',
      'gender': 'perempuan',
      'image': 'images/kansa.jpeg',
      'point': '100',
      'Level': '2',
      'Bio':
          'Khansa adalah seorang pelajar yang sangat rajin dan pintar. Ia selalu mendapatkan nilai terbaik di kelasnya.',
      'Zodiac': 'Sagittarius'
    },
    {
      'name': 'Nadia',
      'gender': 'perempuan',
      'image': 'images/pp.jpeg',
      'point': '100',
      'Level': '1',
      'Bio':
          'Nadia adalah seorang seniman muda yang berbakat. Ia suka melukis dan menggambar sejak kecil.',
      'Zodiac': 'Leo'
    },
    {
      'name': 'Reyfa',
      'gender': 'perempuan',
      'image': 'images/rara.jpeg',
      'point': '100',
      'Level': '3',
      'Bio':
          'Reyfa adalah seorang atlet basket yang sangat berbakat. Ia sering mewakili sekolahnya dalam berbagai kompetisi.',
      'Zodiac': 'Sagittarius'
    },
    {
      'name': 'Intan',
      'gender': 'perempuan',
      'image': 'images/monyet.jpg',
      'point': '100',
      'Level': '4',
      'Bio':
          'Intan adalah seorang penulis muda yang sudah menerbitkan beberapa buku. Ia suka menulis cerita fiksi dan puisi.',
      'Zodiac': 'Leo'
    },
    {
      'name': 'Irma',
      'gender': 'perempuan',
      'image': 'images/irmaa.jpeg',
      'point': '100',
      'Level': '5',
      'Bio':
          'Irma adalah seorang ilmuwan muda yang sedang melakukan penelitian di bidang bioteknologi. Ia sangat tertarik dengan dunia sains.',
      'Zodiac': 'Capricorn'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.pink,
              Colors.purple,
              Colors.blue,
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: latihanData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailLatihan2(
                      name: latihanData[index]['name'],
                      gender: latihanData[index]['gender'],
                      image: latihanData[index]['image'],
                      point: latihanData[index]['point'],
                      level: latihanData[index]
                          ['Level'], // perhatikan: 'Level' pakai huruf besar
                      bio: latihanData[index]['Bio'],
                      zodiac: latihanData[index]['Zodiac'],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "${latihanData[index]['image']}",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${latihanData[index]['name']}",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Point: ${latihanData[index]['point']}",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

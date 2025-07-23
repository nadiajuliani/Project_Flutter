import 'package:flutter/material.dart';
import 'package:nanad/list_view/detail_puncak.dart';
import 'package:nanad/main_layout.dart';

class PuncakGunung extends StatelessWidget {
  PuncakGunung({super.key});

  final List<Map<String, dynamic>> puncakData = [
    {
      'name': 'Banda Neira',
      'kota': 'Maluku',
      'image': 'images/bandaneira.jpeg',
      'desc':
          'Banda Neira adalah sebuah pulau di Kepulauan Banda, Maluku, Indonesia. Pulau ini terkenal dengan sejarahnya sebagai pusat perdagangan rempah-rempah pada masa lalu.'
    },
    {
      'name': 'Gunung Jawa',
      'kota': 'Jawa',
      'image': 'images/roblox.jpeg',
      'desc':
          'Gunung Jawa adalah gunung berapi yang terletak di Pulau Jawa, Indonesia. Gunung ini memiliki pemandangan yang indah dan sering dikunjungi oleh para pendaki.'
    },
    {
      'name': 'Rinjani',
      'kota': 'Lombok',
      'image': 'images/puncak-gunung-rinjani6.jpg',
      'desc':
          'Gunung Rinjani adalah gunung berapi aktif di Pulau Lombok, Nusa Tenggara Barat, Indonesia. '
    },
    {
      'name': 'Raja Ampat',
      'kota': 'Papua',
      'image': 'images/rajaampat.jpg',
      'desc':
          'Raja Ampat adalah sebuah kepulauan di Papua Barat, Indonesia, yang terkenal dengan keindahan alam bawah lautnya dan keanekaragaman hayatinya.'
    },
    {
      'name': 'Kota Seoul',
      'kota': 'Korea Selatan',
      'image': 'images/seoul.jpeg',
      'desc':
          'Seoul adalah ibu kota Korea Selatan, terkenal dengan perpaduan antara tradisi dan modernitas. '
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
          itemCount: puncakData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPuncakGunung(
                      name: puncakData[index]['name'],
                      kota: puncakData[index]['kota'],
                      image: puncakData[index]['image'],
                      desc: puncakData[index]['desc'],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${puncakData[index]['image']}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${puncakData[index]['name']} - ${puncakData[index]['kota']}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nanad/container/dua.dart';
import 'package:nanad/container/satu.dart';
import 'package:nanad/container/tiga.dart';
import 'package:nanad/form/form_screen.dart';
import 'package:nanad/list_view/contoh_dua.dart';
import 'package:nanad/list_view/contoh_empat.dart';
import 'package:nanad/list_view/contoh_satu.dart';
import 'package:nanad/list_view/contoh_tiga.dart';
import 'package:nanad/list_view/latihan_2.dart';
import 'package:nanad/list_view/puncak_gunung.dart';
import 'package:nanad/row_column/latihan_satu.dart';
import 'package:nanad/row_column/row_column.dart';
import 'package:nanad/row_column/row_satu.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarForm(),
    );
  }
}

class ContohWidget extends StatelessWidget {
  const ContohWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Selamat Belajar Flutter!',
        style: TextStyle(
            fontSize: 24,
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blueGrey),
      ),
    );
  }
}

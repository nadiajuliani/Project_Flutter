import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Row',
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('widget Text 1'),
            Text('widget Text 2'),
            Text('widget Text 3'),
          ],
        ));
  }
}

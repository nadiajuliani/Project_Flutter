import 'package:flutter/material.dart';
import 'package:nanad/main_layout.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Column Satu',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('widget Text 1'),
            Text('widget Text 2'),
            Text('widget Text 3'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('widget Row 1'),
                Text('widget Row 2'),
                Text('widget Row 3'),
              ],
            )
          ],
        ));
  }
}

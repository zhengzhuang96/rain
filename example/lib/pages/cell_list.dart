import 'package:flutter/material.dart';
import 'package:rain/rain.dart';

class CellList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RainAppBar(
        title: '单元格',
        color: Colors.red,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            RainCell()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rain/rain.dart';

class ButtonList extends StatelessWidget {
  static const String routeName = '/buttonList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RainAppBar(
        title: 'Button组件',
        color: Colors.redAccent,
        textAlign: Alignment.centerLeft,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            RainFlatButton(
              child: Text('dada'),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

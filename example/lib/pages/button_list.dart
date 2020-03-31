import 'package:flutter/material.dart';
import 'package:flutter_eui/flutter_eui.dart';

class ButtonList extends StatelessWidget {
  static const String routeName = '/buttonList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EuiAppBar(
        title: 'Button组件',
        color: Colors.redAccent,
        textAlign: Alignment.centerLeft,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            EuiFlatButton(
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

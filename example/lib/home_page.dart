import 'package:flutter/material.dart';
import 'package:flutter_eui/flutter_eui.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter_eui',
          style: TextStyle(letterSpacing: 4),
        ),
      ),
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: <Widget>[
            EuiFlatButton(
              color: Colors.black12,
              onPressed: () {},
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}

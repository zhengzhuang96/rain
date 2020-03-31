import 'package:flutter/material.dart';
import 'package:rain/rain.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RainAppBar(barHeight: 0, textColor: Colors.red, popState: true),
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            children: <Widget>[
              SizedBox(height: 30.0),
              Text('Rain',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
              Text('轻量、可靠的移动端Flutter组件库',
                  style: TextStyle(fontSize: 15.0, color: Colors.black26)),
              SizedBox(height: 30.0),
              Text('基础组件',
                  style: TextStyle(fontSize: 13.0, color: Colors.black26)),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50.0)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Button 按钮',
                          style: TextStyle(fontSize: 14.0, color: Colors.black45),
                        ),
                        Icon(Icons.navigate_next, color: Colors.black26)
                      ],
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/buttonList'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50.0)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Cell 单元格',
                          style: TextStyle(fontSize: 14.0, color: Colors.black45),
                        ),
                        Icon(Icons.navigate_next, color: Colors.black26)
                      ],
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/cellList'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

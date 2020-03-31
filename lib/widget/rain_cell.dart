import 'package:flutter/material.dart';

class RainCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 10.0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 235, 237, 240)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('单元格', style: TextStyle()),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('内容'),
                      SizedBox(width: 5.0),
                      Icon(Icons.arrow_forward_ios,
                          size: 15, color: Colors.black26)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

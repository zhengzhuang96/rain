import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

/// import 'dart:ui';
/// MediaQueryData.fromWindow(window).padding.top   获取状态栏高度

class EuiAppBar extends StatefulWidget implements PreferredSizeWidget {
  const EuiAppBar({
    Key key,
    this.title = '',
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.textAlign = Alignment.center,
    this.barHeight = 43.5,
    this.popState = false,
  }) : super(key: key);

  final String title;
  final Color color;
  final Color textColor;
  final AlignmentGeometry textAlign;
  final double barHeight;
  final bool popState;
  @override
  State<EuiAppBar> createState() => _EuiAppBarState();

  @override
  Size get preferredSize {
    return Size.fromHeight(barHeight);
  }
}

class _EuiAppBarState extends State<EuiAppBar> {
  @override
  void initState() {
    super.initState();

    if (widget.color == Colors.white) {
      // 黑色
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    } else {
      // 白色
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Container(
        height: widget.barHeight,
        margin: EdgeInsets.only(
          top: MediaQueryData.fromWindow(window).padding.top, // 状态栏高度
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Offstage(
                    offstage: widget.textAlign == Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Container(width: 36.0),
                        Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: widget.textColor, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Offstage(
                    offstage: widget.textAlign != Alignment.center,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: widget.textColor, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Offstage(
                offstage: widget.popState,
                child: InkWell(
                  child: Container(
                    height: widget.barHeight,
                    width: 36.0,
                    alignment: Alignment.center,
                    child: Icon(Icons.navigate_before, size: 20.0, color: widget.textColor),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

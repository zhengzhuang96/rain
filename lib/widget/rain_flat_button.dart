import 'package:flutter/material.dart';

class RainFlatButton extends StatelessWidget with MaterialButtonWithIconMixin {
  const RainFlatButton(
      {Key key,
      @required this.onPressed,
      this.onHighlightChanged,
      this.textTheme,
      this.textColor,
      this.disabledColor,
      this.focusColor,
      this.hoverColor,
      this.color,
      this.disabledTextColor,
      this.highlightColor,
      this.splashColor,
      this.colorBrightness,
      this.padding,
      this.shape,
      this.clipBehavior,
      this.materialTapTargetSize,
      this.focusNode,
      this.expanded = false,
      @required this.child})
      : super(key: key);

  final VoidCallback onPressed;
  final ValueChanged<bool> onHighlightChanged;
  final ButtonTextTheme textTheme;
  final Color textColor;
  final Color disabledTextColor;
  final Color color;
  final Color disabledColor;
  final Color focusColor;
  final Color hoverColor;
  final Color highlightColor;
  final Color splashColor;
  final Brightness colorBrightness;
  final EdgeInsetsGeometry padding;
  final ShapeBorder shape;
  final Clip clipBehavior;
  final FocusNode focusNode;
  final MaterialTapTargetSize materialTapTargetSize;
  final bool expanded;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final Widget buttonChild = expanded
        ? Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: child,
              )
            ],
          )
        : child;

    return FlatButton(
        onPressed: onPressed,
        onHighlightChanged: onHighlightChanged,
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        padding: padding,
        shape: shape,
        clipBehavior: clipBehavior ?? Clip.none,
        focusNode: focusNode,
        materialTapTargetSize: materialTapTargetSize,
        child: buttonChild);
  }
}

import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  const TextComponent(this.data,
      {Key? key,
      this.color,
      this.fontWeight,
      this.fontSize,
      this.letterSpacing,
      this.fontStyle,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Text(
      data,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14 * media.textScaleFactor,
        letterSpacing: letterSpacing ?? 0.15,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}

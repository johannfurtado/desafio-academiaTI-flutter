import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final String data;
  final Color? color;

  const TitleComponent(
    this.data, {
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return SelectableText(
      data,
      style: TextStyle(
          color: color,
          fontSize: 18 * media.textScaleFactor,
          letterSpacing: 0.20,
          fontWeight: FontWeight.bold),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

var textStyleTitulo = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

var textStyleSubtitulo = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

var textStyleTexto = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
);

var fieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(10.0),
  ),
  filled: true,
  fillColor: Colors.grey.shade200,
  contentPadding: EdgeInsets.only(top: 5, bottom: 10, left: 10),
);

Color primaryColor = Color.fromARGB(255, 4, 4, 158);
Color primaryColorHover = Color.fromARGB(255, 6, 6, 113);
Color secundaryColor = HexColor('00CF80');
Color secundaryColorHover = Color.fromARGB(177, 2, 178, 111);

Color sexternaryColor = HexColor('ED4F42');
Color seternaryColor = HexColor('F09E0A');

Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);
Color vermelhoColor = Color.fromARGB(255, 244, 67, 54);
Color vermelhoColorHover = Color.fromARGB(255, 215, 25, 11);

TextStyle textStyle({Color? color, double? fontSize, FontWeight? fontWeight, double? height}) {
  return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight, height: height);
}

InputDecoration inputDecoration(hintText, prefixIcon, {suffixIcon}) {
  return InputDecoration(
      contentPadding: EdgeInsets.all(12),
      isDense: true,
      prefixIcon: prefixIcon,
      prefixIconColor: Colors.grey.shade400,
      suffixIcon: suffixIcon,
      hintText: hintText,
      hintStyle: textStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        height: 1.8,
        fontSize: 12,
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), borderSide: BorderSide(width: 2, color: Colors.grey.shade300)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), borderSide: BorderSide(width: 2, color: Colors.grey.shade300)),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), borderSide: BorderSide(width: 2, color: Colors.grey.shade300)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Colors.green,
          width: 1.0,
        ),
      ));
}

ButtonStyle buttonStyle = ElevatedButton.styleFrom(shadowColor: Colors.transparent, elevation: 0, primary: primaryColor);

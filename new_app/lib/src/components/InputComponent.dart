import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../repositories/styles.dart';

class InputComponent extends StatelessWidget {
  final String? label;
  final String? errorText;
  final String? initialValue;
  final String? prefixText;
  final int? maxLength;
  final Function? onSaved;
  final Function? validator;
  final Function? onChanged;
  final Function? onFieldSubmitted;
  final String? hintText;
  final Icon? prefixIcon;
  final dynamic suffixIcon;
  final bool? obscureText;
  final bool? enable;
  final TextInputType? keyboardType;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool? autofocus;
  final InputDecoration? decoration;
  final double? height;

  InputComponent({
    Key? key,
    this.label,
    this.initialValue,
    this.maxLength,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.enable,
    this.keyboardType,
    this.maxLines,
    this.inputFormatter,
    this.controller,
    this.readOnly,
    this.autofocus,
    this.decoration,
    this.prefixText,
    this.errorText,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (label != null) {
      return Column(
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                label != null
                    ? SelectableText(
                        label!,
                        style: textStyleTexto,
                      )
                    : Container(),
              ],
            ),
          ),
          Container(
            height: height ?? 80,
            child: Scrollbar(
              child: TextFormField(
                  autofocus: autofocus ?? false,
                  inputFormatters: inputFormatter,
                  maxLines: maxLines ?? 1,
                  enabled: enable ?? true,
                  initialValue: initialValue,
                  readOnly: readOnly ?? false,
                  obscureText: obscureText ?? false,
                  maxLength: maxLength,
                  onFieldSubmitted: (value) => {
                        if (onFieldSubmitted != null) {onFieldSubmitted!(value)}
                      },
                  onChanged: (value) => {
                        if (onChanged != null) {onChanged!(value)}
                      },
                  onSaved: (value) => {
                        if (onSaved != null) {onSaved!(value)}
                      },
                  validator: (value) {
                    if (validator != null) {
                      return validator!(value);
                    }
                    return null;
                  },
                  keyboardType: keyboardType,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14 * context.textScaleFactor,
                      letterSpacing: 0.15,
                      height: 2,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                  decoration: decoration == null
                      ? InputDecoration(
                          errorText: errorText,
                          prefixText: prefixText,
                          prefixIcon: prefixIcon,
                          hintText: hintText,
                          suffixIcon: suffixIcon,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          contentPadding:
                              EdgeInsets.only(top: 5, bottom: 10, left: 10))
                      : decoration),
            ),
          ),
        ],
      );
    } else {
      return TextFormField(
          autofocus: autofocus ?? false,
          controller: controller,
          inputFormatters: inputFormatter,
          maxLines: maxLines ?? 1,
          enabled: enable ?? true,
          initialValue: initialValue,
          readOnly: readOnly ?? false,
          obscureText: obscureText ?? false,
          maxLength: maxLength,
          onFieldSubmitted: (value) => {
                if (onFieldSubmitted != null) {onFieldSubmitted!(value)}
              },
          onChanged: (value) => {
                if (onChanged != null) {onChanged!(value)}
              },
          onSaved: (value) => {
                if (onSaved != null) {onSaved!(value)}
              },
          validator: (value) {
            if (validator != null) {
              return validator!(value);
            }
            return null;
          },
          keyboardType: keyboardType,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14 * context.textScaleFactor,
              letterSpacing: 0.15,
              height: 2,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              errorText: errorText,
              prefixText: prefixText,
              errorMaxLines: 2,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: EdgeInsets.only(top: 5, bottom: 10, left: 10)));
    }
  }
}

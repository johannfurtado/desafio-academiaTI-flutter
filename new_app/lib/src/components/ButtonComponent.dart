import 'package:flutter/material.dart';
import '../repositories/styles.dart';

class ButtonComponent extends StatefulWidget {
  final Function onPressed;
  final String text;
  final Color? color;
  final Color? colorHover;
  final Icon? icon;

  ButtonComponent({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
    this.colorHover,
    this.icon,
  }) : super(key: key);

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  bool _onHover = false;

  getColor() {
    if (widget.color != null && widget.colorHover != null) {
      if (_onHover) {
        return widget.colorHover;
      } else {
        return widget.color;
      }
    } else {
      if (_onHover) {
        return secundaryColorHover;
      } else {
        return secundaryColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.color != null && widget.colorHover == null) {
      return GestureDetector(
        onTap: () => widget.onPressed(),
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 12),
          duration: Duration(milliseconds: 100),
          height: 46,
          curve: Curves.easeIn,
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(5)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.icon != null
                  ? Row(
                      children: [
                        widget.icon!,
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    )
                  : Container(),
              Container(
                child: Text(widget.text,
                    style: TextStyle(
                      letterSpacing: 0.15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 12,
                    )),
              ),
            ],
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => widget.onPressed(),
        child: MouseRegion(
          onHover: ((event) {
            setState(() {
              _onHover = true;
            });
          }),
          onExit: (_) {
            setState(() {
              _onHover = false;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.symmetric(horizontal: 12),
            duration: Duration(milliseconds: 100),
            height: 46,
            curve: Curves.easeIn,
            decoration: BoxDecoration(
                color: getColor(), borderRadius: BorderRadius.circular(5)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon != null
                    ? Row(
                        children: [
                          widget.icon!,
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      )
                    : Container(),
                Container(
                  child: Text(widget.text,
                      style: TextStyle(
                        letterSpacing: 0.15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                      )),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}

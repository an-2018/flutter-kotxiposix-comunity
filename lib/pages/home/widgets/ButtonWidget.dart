import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final ColorSwatch color;
  final icon;

  const ButtonWidget({Key key, this.text, this.color, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon,
            Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all(
            EdgeInsets.all(15),
          ),
          minimumSize: MaterialStateProperty.all<Size>(Size.square(10)),
        ),
        onPressed: () {
          print("Button pressed");
        },
      ),
    );
  }
}

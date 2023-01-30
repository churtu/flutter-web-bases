import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  final Function() onPressed;
  final String text;
  final Color color;
  const CustomFlatButton({
    super.key, 
    required this.onPressed, 
    required this.text, 
    this.color = Colors.pink
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
            style: TextButton.styleFrom(foregroundColor: color),
            onPressed: onPressed, 
            child: Text(text)
          );
  }
}
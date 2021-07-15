import 'package:flutter/material.dart';

class StackSizeCicle extends StatelessWidget {
  const StackSizeCicle({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 20.5,
          ),
          CircleAvatar(
            backgroundColor: color,
            radius: 20,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

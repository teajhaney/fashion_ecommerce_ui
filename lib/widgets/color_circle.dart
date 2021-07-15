import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final Widget? child;

  ColorCircle({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 20,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

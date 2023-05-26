import 'package:flutter/material.dart';

class RoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;
    const double radius = 140.0;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height - radius);
    path.arcToPoint(
      Offset(width - radius, height),
      radius: const Radius.circular(300),
    );

    path.lineTo(radius, height);
    path.arcToPoint(
      Offset(0, height - radius),
      radius: const Radius.circular(300),
    );

    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

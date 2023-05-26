import 'package:flutter/material.dart';

class RoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;
    const double radius = 90.0;

    var path = Path();
    path.lineTo(0, height - radius);
    path.quadraticBezierTo(width / 2, height, width, height - radius);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

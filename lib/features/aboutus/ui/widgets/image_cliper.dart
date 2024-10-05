import 'package:flutter/material.dart';

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const curveStartingPoint = Offset(0, 40);
    final curveEndPoint = Offset(size.width, size.height * 0.95);
    path
      ..lineTo(curveStartingPoint.dx, curveStartingPoint.dy - 5)
      ..quadraticBezierTo(
        size.width * 0.2,
        size.height * 0.85,
        curveEndPoint.dx - 60,
        curveEndPoint.dy + 10,
      )
      ..quadraticBezierTo(
        size.width,
        size.height ,
        curveEndPoint.dx,
        curveEndPoint.dy,
      )
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

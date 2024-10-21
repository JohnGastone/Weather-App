import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final Widget? child;

  WavePainter({this.child});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 34, 135, 212)
      ..style = PaintingStyle.fill;

    final path = Path();

    // Define the wave height (adjust this value to control wave size)
    const waveHeight = 100.0;

    // Calculate the starting y-position to center the wave
    final startY = (size.height - waveHeight) / 2 + waveHeight * 0.8;

    path.moveTo(0, startY);
    path.quadraticBezierTo(
      size.width * 0.25,
      startY - waveHeight * 0.5,
      size.width * 0.5,
      startY,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      startY + waveHeight * 0.4,
      size.width,
      startY,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

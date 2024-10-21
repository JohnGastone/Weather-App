// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [
              Color.fromARGB(255, 3, 47, 135),
              Color.fromARGB(255, 3, 47, 135),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 100,
              child: Row(
                children: [
                  Text(
                    "Hewa",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 255, 178, 0),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomPaint(
                size: Size(
                    MediaQuery.of(context).size.width, 600), // Increased height
                painter: WavePainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 34, 135, 212)
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

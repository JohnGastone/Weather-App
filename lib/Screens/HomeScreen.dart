// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/widgets/wavepainter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              left: 120,
              top: 50,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 178, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 90,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 255, 178, 0),
                        ),
                        Text(
                          "Dar es Salaam",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    Icon(
                      size: 50,
                      Icons.cloudy_snowing,
                      color: Colors.white,
                    ),
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '27 ',
                            style: GoogleFonts.poppins(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: '\u00B0C',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Feeels like ',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: '27 ',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 178, 0),
                            ),
                          ),
                          TextSpan(
                            text: '\u00B0C',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 178, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Cloudy",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
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

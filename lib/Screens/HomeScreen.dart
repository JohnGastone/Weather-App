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
              child: WaveWithContent(
                size: Size(MediaQuery.of(context).size.width, 600),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 350),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "./assets/wind.png",
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Wind Speed",
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          ),
                          Text(
                            "17 km/h",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "./assets/calendar.png",
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Monday, 21 October 2024",
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          ),
                          Text(
                            "10:45 PM",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "./assets/rain.png",
                                height: 30,
                                width: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Humidity",
                                style: GoogleFonts.poppins(color: Colors.white),
                              )
                            ],
                          ),
                          Text(
                            "57%",
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveWithContent extends StatelessWidget {
  final Size size;
  final Widget child;

  const WaveWithContent({Key? key, required this.size, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: size,
          painter: WavePainter(),
        ),
        SizedBox(
          width: size.width,
          height: size.height,
          child: child,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final dailyLessons = const [
    "Hello = Hola",
    "Goodbye = Adiós",
    "Please = Por favor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          autoPlayCurve: Curves.easeInOut,
          enlargeCenterPage: true,
        ),
        items:
            dailyLessons.map((e) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}

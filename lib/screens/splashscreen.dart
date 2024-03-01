import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sos_system/screens/signin_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
 void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 6, 0, 0),
              Color.fromARGB(255, 135, 4, 4),
            ],
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SOS Sytem',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 254, 254, 254),
                ),
              ),
              Text(
                '____________________________',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black12),
              ),
              Text(
                'soch ke likhenge',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 252, 252, 252),
                ),
              ),
              Text(
                '______________',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Color.fromARGB(31, 255, 255, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

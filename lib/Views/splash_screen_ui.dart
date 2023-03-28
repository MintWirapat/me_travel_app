import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_travel_app/Views/Login_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUI(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              'บันทึกการเดินทาง',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.08,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              'Created by : 6452710002\nWirapat Chongsakul',
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                color: Color.fromARGB(255, 55, 55, 55),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

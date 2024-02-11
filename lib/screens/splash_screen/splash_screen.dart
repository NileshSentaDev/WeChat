import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we_chat/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      /// exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      );

      /// navigate login screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_icon.png',
              height: 170,
              width: 170,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(height: 30),
            Text(
              'Welcome to We Chat',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            height: 400,
            'assets/images/google_login.png',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_icon.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Signing With Google',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

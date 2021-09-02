import 'package:flutter/material.dart';
import 'package:job_app/view/home_screen.dart';
import 'package:job_app/view/onboarding_screen.dart';
import 'package:job_app/view/sign_in_screen.dart';
import 'package:job_app/view/sign_up_screen.dart';
import 'package:job_app/view/splash_screen.dart';

void main() => runApp(JobApp());

class JobApp extends StatelessWidget {
  const JobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnBoardingScreen(),
        '/signup' : (context) => SignUpScreen(),
        '/signin' : (context) => SigninScreen(),
        '/home' : (context) => HomeScreen(),
      },
    );
  }
}

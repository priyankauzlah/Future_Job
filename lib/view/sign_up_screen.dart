import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Begin New Journey',
                  style: blackTextStyle.copyWith(
                      fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor)),
                      child: Image.asset('assets/images/image_profile.png')),
                ),
                Text(
                  'Full Name',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 20.0)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

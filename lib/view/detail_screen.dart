import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          isApplied
                              ? Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 30.0),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xffecedf1),
                                  ),
                                  child: Text(
                                    'You have applied this job the \n recruiter will contact you',
                                    textAlign: TextAlign.center,
                                    style: greyTextStyle.copyWith(),
                                  ),
                                )
                              : Container(),
                          Image.asset(
                            'assets/images/icon_google.png',
                            width: 60.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Front-End Developer',
                            style: blackTextStyle.copyWith(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text('Google, Inc . Jakarta', style: greyTextStyle),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'About the Job',
                      style: blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    detailItem('Full-Time on Site'),
                    detailItem('Start at \$18.000'),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Qualifications',
                      style: blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    detailItem(
                        'Candidate must process at least a Bachelor\'s Degree'),
                    detailItem(
                        'Able to use Microsoft Office and Google based service'),
                    detailItem(
                        'Have an excellent time management, good at organized and details'),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Responsibilities',
                      style: blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    detailItem(
                        'Initiate and promote any programs, events, training, or activities'),
                    detailItem(
                        'Assessing and anticipating needs and collaborate with divisions.'),
                    SizedBox(height: 50.0),
                    isApplied ? cancelButton() : applyButton(),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 35),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Message Recruiter',
                              style:
                                  greyTextStyle.copyWith(fontWeight: FontWeight.w500),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget applyButton() {
    return Center(
      child: Container(
        height: 45.0,
        width: 200.0,
        child: TextButton(
          onPressed: () {
            setState(() {
              isApplied = true;
            });
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          child: Text(
            'Apply for job',
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget cancelButton() {
    return Center(
      child: Container(
        height: 45.0,
        width: 200.0,
        child: TextButton(
          onPressed: () {
            setState(() {
              isApplied = false;
            });
          },
          style: TextButton.styleFrom(
              backgroundColor: redColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          child: Text(
            'Cancel Apply',
            style: whiteTextStyle.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget detailItem(String detail) {
    return Row(
      children: [
        Icon(
          Icons.adjust,
          color: primaryColor,
          size: 12.0,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            detail,
            style: blackTextStyle.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

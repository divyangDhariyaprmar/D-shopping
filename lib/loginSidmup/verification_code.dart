import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginSidmup/new_password.dart';

class verificationpage extends StatefulWidget {
  @override
  State<verificationpage> createState() => _verificationpageState();
}

class _verificationpageState extends State<verificationpage> {
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();

  int verication_time = 10;
  bool visibility = false;

  page_move() {
    if (code1.text == 1.toString() &&
        code2.text == 2.toString() &&
        code3.text == 3.toString() &&
        code4.text == 4.toString()) {
      Timer(Duration(seconds: 6), () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return newpasswordpage();
          },
        ));
      });
    }
  }

  // time() {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.back)),
          ),
          SizedBox(
            height: 34,
          ),
          Container(
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(left: 33),
                alignment: Alignment.topLeft,
                child: Text('Verification code',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.only(left: 33),
                child: Text(
                    'Please enter the verification code we sent to your email address'),
              ),
              SizedBox(
                height: 56,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        controller: code1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        controller: code2,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        controller: code3,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        controller: code4,
                        onSubmitted: (value) {
                          if (code1.text.isNotEmpty &
                              code2.text.isNotEmpty &
                              code3.text.isNotEmpty &
                              code4.text.isNotEmpty) {
                            visibility = true;
                            page_move();
                            Timer.periodic(Duration(seconds: 1), (timer) {
                              if (verication_time > 0) {
                                verication_time--;
                                setState(() {});
                              } else {
                                timer.cancel();
                                verication_time = 10;
                                code1.clear();
                                code2.clear();
                                code3.clear();
                                code4.clear();
                                visibility = false;

                                setState(() {});
                              }
                            });
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
              SizedBox(
                height: 47,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text('Resend in ' + verication_time.toString()),
                  )
                ],
              ),
            ]),
          ),
          Visibility(
            visible: visibility,
            child: CircularProgressIndicatorApp(),
          )
        ]),
      ),
    );
  }
}

class CircularProgressIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 12,
        ),
      ),
    );
  }
}

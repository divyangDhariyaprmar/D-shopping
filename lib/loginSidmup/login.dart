import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginSidmup/fargot_password.dart';
import 'package:flutter_application_1/loginSidmup/singup.dart';
import 'package:flutter_application_1/products/diceovrepage.dart';
import 'package:flutter_application_1/products/homepageconten/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        Container(
          margin: EdgeInsets.only(right: 200, top: 58),
          child: Column(children: [
            Text(
              'Log into',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 4, 3, 3)),
            ),
            Text(
              'your account',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 4, 3, 3)),
            ),
          ]),
        ),
        SizedBox(
          height: 19,
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Email address'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 220),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return fargotPassword();
                        },
                      ));
                    },
                    child: Text('Forgot Password?')),
              )
            ],
          ),
        ),
        SizedBox(
          height: 44,
        ),
        SizedBox(
            height: 51,
            width: 147,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(16, 15, 15, 0.63)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return homepage();
                    },
                  ));
                },
                child: Text(
                  ' log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ))),
        SizedBox(
          height: 28,
        ),
        InkWell(
          onTap: () {
            print('object');
          },
          child: Text(
            'or log in with',
            style: TextStyle(),
          ),
        ),
        SizedBox(
          height: 13.5,
        ),
        Container(
          height: 70,
          color: Colors.black12,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                child: IconButton(
                    onPressed: () {
                      var url = 'https://www.apple.com/in/iphone/';

                      launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
                    },
                    icon: const Icon(
                      Icons.apple,
                      size: 40,
                    ))),
            Container(
                child: IconButton(
                    onPressed: () {
                      var url1 =
                          'https://myaccount.google.com/?utm_source=sign_in_no_continue&pli=1';
                      launchUrl(Uri.parse(url1), mode: LaunchMode.inAppWebView);
                    },
                    icon: const Icon(
                      Icons.g_mobiledata,
                      size: 40,
                    ))),
            Container(
                child: IconButton(
                    onPressed: () {
                      var uri = 'https://www.facebook.com/login/';
                      launchUrl(Uri.parse(uri), mode: LaunchMode.inAppWebView);
                    },
                    icon: const Icon(
                      Icons.facebook_outlined,
                      size: 40,
                    )))
          ]),
        ),
        SizedBox(
          height: 180,
        ),
        Text("Don’t have an account?"),
        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return singupPage();
                },
              ));
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Color.fromARGB(255, 0, 162, 255)),
            ))
      ])),
    ));
  }
}

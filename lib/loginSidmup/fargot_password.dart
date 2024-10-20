import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginSidmup/verification_code.dart';

class fargotPassword extends StatelessWidget {
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
                child: Text('Forgot password?',
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
                    'Enter email associated with your account and we’ll send and email with intructions to reset your password'),
              ),
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_outlined),
                      label: Text('enter your email here'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                  onSubmitted: (value) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return verificationpage();
                      },
                    ));
                    print('$value');
                  },
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginSidmup/login.dart';

class newpasswordpage extends StatefulWidget {
  const newpasswordpage({super.key});

  @override
  State<newpasswordpage> createState() => _newpasswordpage();
}

class _newpasswordpage extends State<newpasswordpage> {
  bool shwo_password = true;

  TextEditingController NewPasswoed = TextEditingController();
  TextEditingController ConfiemPasswoed = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  child: Text('Create new password',
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
                      'Your new password must be different from previously used password'),
                ),
                SizedBox(
                  height: 56,
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    controller: NewPasswoed,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('New Password'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    controller: ConfiemPasswoed,
                    obscureText: shwo_password,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              if (shwo_password) {
                                shwo_password = false;
                              } else {
                                shwo_password = true;
                              }

                              setState(() {});
                            },
                            icon: Icon(Icons.remove_red_eye_sharp)),
                        label: Text('Confirm Password'),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 119,
            ),
            ShowBottomSheetExample(),
          ]),
        ),
      ),
    );
  }
}

class ShowBottomSheetExample extends StatelessWidget {
  ShowBottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: 51,
        width: 147,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(16, 15, 15, 0.63)),
          child: Text(
            'Confirm',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Scaffold.of(context).showBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              (BuildContext context) {
                return Container(
                  height: size.height / 2.5,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 27,
                      ),
                      Icon(CupertinoIcons.device_phone_portrait, size: 50),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Your password has been changed',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Welcome back! Discover now!'),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(16, 15, 15, 0.63)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return loginpage();
                                },
                              ));
                            },
                            child: Text(
                              'Browse home',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

// class bootmj extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: ,
//     )
//   }

// }

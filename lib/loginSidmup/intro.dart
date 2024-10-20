import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginSidmup/singup.dart';

class intropage extends StatefulWidget {
  const intropage({super.key});

  @override
  State<intropage> createState() => _intropageState();
}

class _intropageState extends State<intropage> {
  @override
  int mypageNumber = 0;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            introPage(
                'Discover something new',
                'Special new arrivals just for you',
                'lib/aseat/Frame 33089.png',
                mypageNumber),
            introPage(
                'Discover something new',
                'Special new arrivals just for you',
                'lib/aseat/Frame 33091.png',
                mypageNumber),
            introPage(
                'Discover something new',
                'Special new arrivals just for you',
                'lib/aseat/Frame 33094.png',
                mypageNumber as int),
          ],
          onPageChanged: (value) {
            mypageNumber = value;

            setState(() {});
          },
        ),
      ),
    );
  }
}

class introPage extends StatefulWidget {
  final String imageuri;
  final String title;
  final String desctontext;
  final value;
  introPage(this.title, this.desctontext, this.imageuri, this.value,
      {super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  late int value1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: AlignmentDirectional.topCenter,
              begin: AlignmentDirectional.centerStart,
              colors: [Color.fromRGBO(0, 0, 0, 1), Colors.white])),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.desctontext,
            style: TextStyle(
              fontSize: 14,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Image.asset('${widget.imageuri}'),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 300,
            child: Slider(
              divisions: 2,
              max: 2,
              min: 0,
              value: widget.value.toDouble(),
              onChanged: (value) {
                this.value1 = value.toInt();
                print(value1);
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return singupPage();
                  },
                ));
              },
              child: Text(
                'Shopping now',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Getmodel.dart';
import 'package:flutter_application_1/loginSidmup/intro.dart';
import 'package:flutter_application_1/products/a.dart';
import 'package:flutter_application_1/products/diceovrepage.dart';
import 'package:flutter_application_1/products/homepageconten/homepage.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home:
      //  diceoverpage(),
      //  homepage()
      const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Getmodl> getlist = [];
  Future<List<Getmodl>> getdata() async {
    final res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(res.body.toString());

    if (res.statusCode == 200) {
      for (Map i in data) {
        getlist.add(Getmodl.fromJson(i));
      }
      return getlist;
    } else {
      return getlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
            foregroundDecoration:
                BoxDecoration(color: const Color.fromARGB(31, 0, 0, 0)),
            decoration: const BoxDecoration(
                image: DecorationImage(
              opacity: 2,
              image: AssetImage('lib/aseat/image 45.png'),
              fit: BoxFit.cover,
            )),
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 350,
                  ),
                  const Text(
                    'Welcome to GemStore! ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Text(
                    'The home for a fashionista',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return intropage();
                          },
                        ));
                        setState(() {
                          print('object');
                        });
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            )));
  }
}

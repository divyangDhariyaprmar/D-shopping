import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sameprodact.dart';
import 'package:flutter_application_1/products/homepageconten/home.dart';
import 'package:http/http.dart' as http;

class productfoundpage extends StatefulWidget {
  @override
  State<productfoundpage> createState() => _productfoundpageState();
}

class _productfoundpageState extends State<productfoundpage> {
  List<Sameprodact> sameprodat_list = [];
  Future<List<Sameprodact>> sameprodactitem() async {
    var res =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
    var dataa = jsonDecode(res.body.toString());
    for (Map j in dataa) {
      sameprodat_list.add(Sameprodact.fromJson(j));
    }

    if (res.statusCode == 200) {
      print(res.body);
      print('list of rodact');
      // print(sameprodat_list);
      return sameprodat_list;
    } else {
      print('erroe');
      return sameprodat_list;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
      future: sameprodactitem(),
      builder: (context, snapshot) {
        return GridView.builder(
          itemCount: sameprodat_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 300,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        child: Image.network(
                          snapshot.data![index].images![0].toString(),
                        )),
                    Text(
                      snapshot.data![index].title.toString(),
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          "price :" +
                              (snapshot.data![index].price! * 25).toString(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 7, 58, 100)),
                        ),
                      ),
                    ])
                  ],
                ),
              );
            } else {
              return CircularProgressIndicator(
                // value: 0.1,
                semanticsLabel: 'Circular progress indicator',
              );
            }
          },
        );
      },
    ));
  }
}

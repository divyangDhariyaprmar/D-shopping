import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/abcmodle.dart';
import 'package:flutter_application_1/carditems.dart';
import 'package:flutter_application_1/cardmodal.dart';
import 'package:http/http.dart' as http;

class a extends StatelessWidget {
  @override
  Future<Carditems> addcard1() async {
    var res = await http.get(Uri.parse(
        'https://script.google.com/macros/s/AKfycbz6gfNT8LPHCoj8ifLLY-NpG4n0PJw1vddBh5OCxbALSZGo3gzPauep2OAKCWsW5TdEyg/exec'));
    var data = jsonDecode(res.body.toString());
    // for (Map i in data) {
    //   carditem.add(carditems.fromJson(i));
    // }
    if (res.statusCode == 200) {
      print(res.body);
      return Carditems.fromJson(data);
    } else {
      return Carditems.fromJson(data);
    }
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder<Carditems>(
        future: addcard1(),
        builder: (context, snapshot) {
          print('object is nall');
          print(snapshot.data);
          var nn = snapshot.data!;

          return ListView.builder(
            // itemCount: nn==null ? 1:nn.posts.length,
            itemCount: snapshot.data!.data!.length,
            itemBuilder: (context, index) {
              return Text('snapshot.data.posts');
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class check_out1 extends StatelessWidget {
  check_out1();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('check out'),
      ),
      body: Column(children: [
        Container(
          child: Column(children: [
            Text('STEP 1'),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Shipping',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        //1
        Container(
          child: Card(
              child: Column(
            children: [
              TextField(
                decoration: InputDecoration(label: Text('First Name')),
              ),
              TextField(
                decoration: InputDecoration(label: Text('Last Name')),
              ),
            ],
          )),
        )
      ]),
    );
  }
}

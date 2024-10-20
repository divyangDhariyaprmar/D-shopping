import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sameprodact.dart';
import 'package:flutter_application_1/carditems.dart';
import 'package:flutter_application_1/loginSidmup/new_password.dart';
import 'package:flutter_application_1/products/check%20out.dart';
import 'package:flutter_application_1/products/homepageconten/home.dart';
import 'package:http/http.dart' as http;

class card extends StatefulWidget {
  void initState() {
    // TODO: implement initState
  }

  List<Sameprodact> sameprodat_list = [];
  List abc = [];
  String title_text;
  String description_text;
  String image_text;
  String price_text;

  card(this.title_text, this.description_text, this.image_text, this.price_text,
      {super.key});

  // List<carditems> carditem = [];
  // Future<carditems> addcard() async {
  //   var res = await http.get(Uri.parse(
  //       'https://script.googleusercontent.com/macros/echo?user_content_key=vxVNYURVMZ0pqXsSwjDC51_KB1JD_jxS6CMJAYCsh4UmCa_SK1W4EU3jCA1XIqpLoBsBp763JDRqlCC_v6Y6fK7VpGljyd-Zm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnI6nNPv_C3__pcWbJpS-7c5xw9M4PV8Fe_yskT6ah_7Pqf1g843xuIYWC6r17GftStMQ1PpwRpM6BLRJBuJMSPoCX_OfuueatQ&lib=M0ovUgOA8yFpPjKAm2eR8cmxMYCeUYLF8'));
  //   var data = jsonDecode(res.body.toString());
  //   // for (Map i in data) {
  //   //   carditem.add(carditems.fromJson(i));
  //   // }
  //   if (res.statusCode == 200) {
  //     print(res.body);
  //     return carditems.fromJson(jsonDecode(res.body));
  //   } else {
  //     print('erroe');
  //           return carditems.fromJson(jsonDecode(res.body));
  //
  //   }
  // }

  Future addnewitem() async {
    var res = await http.post(
        Uri.parse(
            'https://script.google.com/macros/s/AKfycby5ibnCEA6emIpHZBjUzUMyFZYNIVbvtR7HRF9Ukj8j9YrqZqNoI2HDEbFOVfnObRjjHw/exec'),
        body: {
          'title': title_text.toString(),
          'price': price_text.toString(),
          'description': description_text.toString(),
          'image': image_text.toString()
        });
    if (res.statusCode == 201) {
      print('daata send in database');
    } else {
      print('in erro in come');
    }
  }

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  int itemcount = 1;
  bool Visibilitys = true;
  var myindex;
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
        appBar: AppBar(title: Text('your card')),
        // body: FutureBuilder<Carditems>(
        //   future: addcard1(),
        //   builder: (context, snapshot) {
        //     print('object is nall');
        //     print(snapshot.data);
        //     var nn = snapshot.data!;

        //     return ListView.builder(
        //       // itemCount: nn==null ? 1:nn.posts.length,
        //       itemCount: snapshot.data!.data!.length,
        //       itemBuilder: (context, index) {
        //         return Text('snapshot.data.posts');
        //       },
        //     );
        //   },
        // ));

        body: FutureBuilder<Carditems>(
          future: addcard1(),
          builder: (context, snapshot) {
            print(snapshot.hasData);
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return index == index
                        ? Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: InkWell(
                              onTap: () {
                                Scaffold.of(context).showBottomSheet(
                                  backgroundColor: Colors.white,
                                  (context) {
                                    return Container(
                                        height: 250,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 70,
                                              child: Card(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text('Product price'),
                                                      Text(snapshot.data!
                                                          .data![index].price
                                                          .toString()),
                                                    ]),
                                              ),
                                            ),
                                            Container(
                                              height: 70,
                                              child: Card(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        'Shipping',
                                                        style: TextStyle(),
                                                      ),
                                                      Text(
                                                        snapshot.data!
                                                            .data![index].title
                                                            .toString(),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                height: 50,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            textStyle: TextStyle(
                                                                color: Colors
                                                                    .white)),
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return check_out1();
                                                        },
                                                      ));
                                                    },
                                                    child: Text(
                                                      'Proceed to checkout',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                              ),
                                            )
                                          ],
                                        ));
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: Image.network(snapshot
                                        .data!.data![index].description
                                        .toString()),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      // height: 20,
                                      child: Column(

                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                snapshot
                                                    .data!.data![index].title
                                                    .toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16)),
                                            Text(
                                                snapshot
                                                    .data!.data![index].price
                                                    .toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16)),
                                            InkWell(
                                              onTap: () {
                                                myindex = index;
                                                print(myindex);
                                              },
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        myindex = index;
                                                        itemcount++;

                                                        setState(() {});
                                                      },
                                                      icon: Icon(Icons.add)),
                                                  myindex == index
                                                      ? itemcountno(itemcount)
                                                      : Text('0'),
                                                  IconButton(
                                                      onPressed: () {
                                                        myindex = index;
                                                        itemcount--;

                                                        setState(() {});
                                                      },
                                                      icon: Icon(Icons.remove)),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        : Text('context.toString()');
                  },
                ),
              );
            } else {
              return Text('data is loding...');
            }
          },
        ));
  }
}

class itemcountno extends StatelessWidget {
  itemcountno(this.num);
  int num = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(num.toString());
  }
}

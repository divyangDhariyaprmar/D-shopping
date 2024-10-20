import 'dart:convert';
import 'dart:developer';
import 'package:flutter_application_1/Sameprodact.dart';
import 'package:flutter_application_1/products/addtocade.dart';
import 'package:flutter_application_1/products/foundproct.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
// import 'package:readmore/readmore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/mygetmodle.dart';
import 'package:flutter_application_1/products/homepageconten/home.dart';
import 'package:http/http.dart' as http;

class diceoverpage extends StatefulWidget {
  @override
  State<diceoverpage> createState() => _diceoverpageState();
  String uri = 'https://fakestoreapi.com/products';

  List<Mygetmodle> getlist = [];

  Future<List<Mygetmodle>> getdata() async {
    final res = await http.get(Uri.parse(uri));
    bool description = true;
    var data1 = jsonDecode(res.body.toString());
    if (res.statusCode == 200) {
      print(res.body);
      log(uri);
      for (Map i in data1) {
        getlist.add(Mygetmodle.fromJson(i));
      }
      return getlist;
    } else {
      print('res.body');
      throw Exception('Failed to load album');
    }
  }
}

class _diceoverpageState extends State<diceoverpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
      future: widget.getdata(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: widget.getlist.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).showBottomSheet(
                          backgroundColor: Colors.white,
                          (context) {
                            return Container(
                                height: MediaQuery.sizeOf(context).height - 250,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Text(''),
                                    Expanded(
                                      child: ListView(
                                        children: [
                                          Container(
                                            height: 395,
                                            child: Image.network(snapshot
                                                .data![index].image
                                                .toString()),
                                          ),
                                          SizedBox(
                                            height: 57,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 16.0,
                                                ),
                                                child: Text(
                                                  snapshot.data![index].title
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 16.0),
                                                      child: Text(
                                                        "price :" +
                                                            (snapshot.data![index]
                                                                        .price! *
                                                                    40)
                                                                .toString(),
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    7,
                                                                    58,
                                                                    100)),
                                                      ),
                                                    ),
                                                  ]),
                                              PannableRatingBar(
                                                  rate: snapshot.data![index]
                                                      .rating!.rate!
                                                      .toDouble(),
                                                  items: List.generate(
                                                    5,
                                                    (index) {
                                                      return RatingWidget(
                                                          child:
                                                              Icon(Icons.star));
                                                    },
                                                  )),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              description(
                                                snapshot
                                                    .data![index].description
                                                    .toString(),
                                                snapshot.data![index].title
                                                    .toString(),
                                                snapshot.data![index].image
                                                    .toString(),
                                                snapshot.data![index].price
                                                    .toString(),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent),
                        height: 250,
                        width: double.infinity,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Image.network(
                            snapshot.data![index].image.toString(),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return Text('data is loding......');
        }
      },
    ));
  }
}

class description extends StatefulWidget {
  final String description_text;
  final String title_text;
  final String image_text;
  final String price_text;

  description(
      this.description_text, this.title_text, this.image_text, this.price_text,
      {super.key});

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
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  bool description = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Text(widget.title_text),
        Card(
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200),
              child: TextButton(
                  onPressed: () {
                    description == false
                        ? description = true
                        : description = false;
                    setState(() {});
                  },
                  child: description == false
                      ? Icon(CupertinoIcons.arrow_down)
                      : Icon(CupertinoIcons.arrow_up)),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Visibility(
            visible: description,
            child: Text(widget.description_text),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Similar Product',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 120),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return productfoundpage();
                      },
                    ));
                    setState(() {});
                  },
                  child: Text('show more')),
            )
          ]),
        ),
        Container(
          height: 388,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Visibility(
                visible: description,
                child: FutureBuilder(
                  future: widget.sameprodactitem(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.sameprodat_list.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return productfoundpage();
                                    },
                                  ));
                                },
                                child: Container(
                                  height: 250,
                                  width: 253,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Image.network(
                                      snapshot.data![index].images![0]
                                          .toString(),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(snapshot.data![index].title
                                          .toString()),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "price : ${snapshot.data![index].price.toString()}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      return Text('data is loding......');
                    }
                  },
                )),
          ),
        ),
        BottomAppBar(
            child: Container(
          width: double.infinity,
          height: 85,
          color: const Color.fromARGB(255, 40, 40, 40),
          child: InkWell(
            onTap: () {
              card(widget.title_text, widget.description_text,
                      widget.image_text, widget.price_text + 'r')
                  .addnewitem();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return card(widget.title_text, widget.description_text,
                      widget.image_text, widget.price_text);
                },
              ));
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.shop,
                color: Colors.white,
                size: 36,
              ),
              Text(
                'Add To Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ))
      ],
    );
  }
}

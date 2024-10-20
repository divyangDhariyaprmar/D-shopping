import 'package:flutter/material.dart';
import 'package:flutter_application_1/products/diceovrepage.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          child: PageView(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        // fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/fc/6b/e6/fc6be6a5ed53b5b311a4cfb2201550bc.jpg'))),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Autumn",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Collection 2024",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            'https://saundh.com/cdn/shop/files/S02R-_3_38b4e6db-1fd8-4fa6-8c0c-59b7481d11b9.jpg?v=1711604406'))),
                width: double.infinity,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Autumn",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Collection 2024",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqIC3q8gnnkVyW3ml7mDyaEcOfrCQsYTLJug&usqp=CAU'))),
                width: double.infinity,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Autumn",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Collection 2024",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 171, 167, 167)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text("Feature Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return diceoverpage();
                    },
                  ));
                },
                child: Text('Show all'))
          ]),
        ),
        Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/aseat/product_photo/image 55 (2).png'),
                    Text('Turtleneck Sweater'),
                    Text(
                      'price:850',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/aseat/product_photo/image 55 (1).png'),
                    Text('Long Sleeve Dress'),
                    Text(
                      'price:800',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 190,
                      child: Image.asset(
                          'lib/aseat/product_photo/Mask Group (3).png'),
                    ),
                    Text('Sportwear Set'),
                    Text(
                      'price:1000',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 190,
                      child: Image.asset(
                          'lib/aseat/product_photo/Mask Group (3).png'),
                    ),
                    Text('Turtleneck Sweater'),
                    Text(
                      'price:850',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )),
        card1(
          subtext: 'NEW COLLECTION',
          maintext1: 'HANG OUT',
          maintext2: "& PARTY",
          hight: 158,
          imguri: 'lib/aseat/product_photo/image 64.png',
          imgwithe: 158,
        ),
        SizedBox(
          height: 38,
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 171, 167, 167)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text("Recommended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return diceoverpage();
                    },
                  ));
                },
                child: Text('Show all'))
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                      ),
                      width: 66,
                      child: Image.asset(
                          'lib/aseat/product_photo/image 64 (2).png'),
                    ),
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'White fashion hoodie',
                            ),
                            Text('price:850',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    sizbox(20),
                  ],
                ),
              ),
              sizbox(15),
              Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                      ),
                      width: 66,
                      child:
                          Image.asset('lib/aseat/product_photo/image 65.png'),
                    ),
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Cotton T-shirt',
                            ),
                            Text('price:850',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    sizbox(20),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                      ),
                      width: 66,
                      child:
                          Image.asset('lib/aseat/product_photo/image 65.png'),
                    ),
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Cotton T-shirt',
                            ),
                            Text('price:850',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    sizbox(20),
                  ],
                ),
              ),
            ],
          ),
        ),
        sizbox(34),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 171, 167, 167)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text("Top Collection",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return diceoverpage();
                    },
                  ));
                },
                child: Text('Show all'))
          ]),
        ),
        sizbox(33),
        card1(
          subtext: 'Sale up to 40%',
          maintext1: 'FOR SLIM',
          maintext2: '& BEAUTY',
          hight: 142,
          imguri: 'lib/aseat/product_photo/image 48.png',
          imgwithe: 128,
        ),
        sizbox(20),
        card1(
            subtext: 'Summer Collection 2024',
            maintext1: 'Most sexy',
            maintext2: '''& fabulous
design''',
            hight: 210,
            imguri: 'lib/aseat/product_photo/image 69.png',
            imgwithe: 152)
      ],
    )
        // Column(children: [
        //   Expanded(
        //       child: PageView(
        //     children: [

        //       Padding(
        //
        //     ],
        //   )),

        );
  }
}

class card1 extends StatelessWidget {
  final String subtext;
  final String maintext1;
  final String maintext2;
  final int hight;
  final int imgwithe;
  final String imguri;

  const card1(
      {required this.subtext,
      required this.maintext1,
      required this.maintext2,
      required this.hight,
      required this.imguri,
      required this.imgwithe});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: hight.toDouble(),
      child: Card(
        child: Row(children: [
          Expanded(
              child: Container(
            child: Column(children: [
              Text(subtext, style: TextStyle(fontSize: 12)),
              SizedBox(
                height: 23,
              ),
              Text(maintext1, style: TextStyle(fontSize: 20)),
              Text(maintext2, style: TextStyle(fontSize: 20)),
            ]),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(226, 226, 226, 226),
              ),
              width: imgwithe.toDouble(),
              child: Image.asset('$imguri'),
            ),
          )
        ]),
      ),
    );
  }
}

class sizbox extends StatelessWidget {
  final double hight;
  const sizbox(
    this.hight,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: hight,
    );
  }
}

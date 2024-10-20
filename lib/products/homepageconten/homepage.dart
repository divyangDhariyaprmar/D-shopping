import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/products/diceovrepage.dart';
import 'package:flutter_application_1/products/homepageconten/home.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Center(
              child: Text(
            'Gemstore',
          )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              myindex = index;
              setState(() {});
            },
            currentIndex: myindex,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 83, 148, 233),
                  size: 30,
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30,
                ),
                label: ' ',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.search_outlined,
                  color: Color.fromARGB(255, 83, 148, 233),
                  size: 30,
                ),
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                label: ' ',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shop_rounded,
                  color: Color.fromARGB(255, 83, 148, 233),
                  size: 30,
                ),
                icon: Icon(
                  Icons.shop_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                label: ' ',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.account_circle,
                  color: Color.fromARGB(255, 83, 148, 233),
                  size: 30,
                ),
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 30,
                ),
                label: ' ',
              ),
            ]),
        body: IndexedStack(
          index: myindex,
          children: [
            home(),
           diceoverpage(),
            
            Text('data3'),
          ],
        ));
  }
}

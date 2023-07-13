import 'dart:ui';

import 'package:flutter/material.dart';

import 'Asset_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset('assets/images/notify.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentSelectedIndex,
        // unselectedItemColor: Colors.black,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/h1.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/search.png'),
            label: "Product",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/trans.png'),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profile.png'),
            label: "Account",
          ),
        ],
        onTap: ((index) {
          setState(() {
            currentSelectedIndex = index;
          });
        }),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text(
                  'Welcome, Jessie.',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  width: 420,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xff31A062),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, right: 180),
                        child: Text(
                          'Your total assets portfolio',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                'N203,935',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Invest now",
                                  style: TextStyle(color: Color(0xff31A062)),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    primary: Colors.white,
                                    textStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Text(
                      "Best Plans",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 13.0),
                    child: Text(
                      "See All →",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/cs1.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/cs2.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset('assets/images/cs3.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 210.0),
                child: Text(
                  'Investment Guide',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Basic type of investments                                   '
                            'This is how you set your foot for 2020 Stock market recession. What’s next...',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "SF Compact Display",
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/e1.png'),
                      // SizedBox(
                      //   width: 30,
                      // ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return AssetScreen();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'How much can you start wit..                           '
                            'What do you like to see? It’s a very different market from 2018. The way...',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "SF Compact Display",
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/e2.png'),
                      // SizedBox(
                      //   width: 75,
                      // ),
                    ],
                  )),
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}

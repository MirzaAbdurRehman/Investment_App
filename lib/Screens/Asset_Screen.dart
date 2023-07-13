import 'dart:html';

import 'package:flutter/material.dart';

import 'Profile_Screen.dart';

class AssetScreen extends StatefulWidget {
  const AssetScreen({Key? key}) : super(key: key);

  @override
  State<AssetScreen> createState() => _AssetScreenState();
}

class _AssetScreenState extends State<AssetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'My Asset',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset('assets/images/v.png'),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(17),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, right: 250),
                        child: Text(
                          'Your total assets portfolio',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'assets/images/vi.png',
                                ),
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
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300.0),
                child: Text(
                  'Current Plans',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 420,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xff31A062),
              ),
              child: Image.asset('assets/images/pofo.png'),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              child: Text(
                'See All Plans →',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300.0),
                child: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: FlatButton(
                  height: 25,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Profile();
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
                            'Rp 200.000                                  '
                            'Buy "APPL Stock"               TUE 22 Jun 2020',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "SF Compact Display",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: FlatButton(
                  height: 25,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Rp 150.000                                  '
                            'Sell “TLKM” Stock              TUE 22 Jun 2020',
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: "SF Compact Display",
                                color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: FlatButton(
                  height: 25,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Rp 1.000.240                                  '
                            'Buy “FB” Stock              TUE 22 Jun 2020',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "SF Compact Display",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
              child: FlatButton(
                  height: 25,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Rp 1.000.240                                  '
                            'Sell “APPL” Stock              TUE 22 Jun 2020',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: "SF Compact Display",
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

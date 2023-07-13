import 'dart:html';

import 'package:flutter/material.dart';

import 'Bank_Info.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentSelectedIndex,
        // unselectedItemColor: Colors.black,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png'),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset('assets/images/pro.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Jonas Macroni',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: "SF Compact Display",
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              ' Expert',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "SF Compact Display",
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/images/contact.png'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          'Contact Info',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/images/funding.png'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          'Source of Funding Info',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )),
            ),
            SizedBox(
              height: 3,
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
                          return BankInfo();
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/bank.png'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          'Bank Account Info',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/images/Shape.png'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          'Document Info',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: FlatButton(
                  height: 50,
                  padding: EdgeInsets.all(20),
                  color: Colors.white70,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/images/setting.png'),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

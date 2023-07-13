import 'dart:html';

import 'package:flutter/material.dart';

import 'CreateAccount_Screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset('assets/images/a1.png'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Text(
                  'Stay on top of your finance with us.',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  'We are your new financial Advisors to recommed the best investments for you.',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                width: 300,
                height: 50,
                //wrap elevated button with sizedBox widget
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return CreateAccount();
                        },
                      ),
                    );
                  },
                  // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                  child: Text('Create account'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff31A062),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xff31A062),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "SF UI Text"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

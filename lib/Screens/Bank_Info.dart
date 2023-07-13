import 'package:flutter/material.dart';
import 'another.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({Key? key}) : super(key: key);

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
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
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 50,
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
                    Image.asset('assets/images/reu.png'),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Bank of Amrica - 0182128xxx            '
                          'Jonas Macroni',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 10,
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
                    Image.asset('assets/images/re.png'),
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Zenith Bank - 0182128xxx                 '
                          'Jonas Macroni',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "SF Compact Display",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                )),
          ),
          SizedBox(
            width: 1000,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
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
                        return another();
                      },
                    ),
                  );
                },
                // style: ElevatedButton.styleFrom(shadowColor: Colors.green),
                child: Text('Add account'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff31A062),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

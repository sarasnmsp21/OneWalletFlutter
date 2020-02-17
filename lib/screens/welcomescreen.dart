import 'package:flutter/material.dart';
import '../screens/signup.dart';
import '../screens/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .55,
              decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                      stops: [
                        0.0,
                        1.0
                      ],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      tileMode: TileMode.repeated),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .42,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 350.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome to OneWallet',
                      style: TextStyle(
                          height: 3,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text('The app for all your household bills'),
                  const SizedBox(height: 90),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    padding: const EdgeInsets.fromLTRB(0.0, 0, 00, 0),
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(100.0, 10, 100, 10),
                      decoration: const BoxDecoration(),
                      child: const Text('SIGN IN',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingUpPage()),
                      );
                    },
                    padding: const EdgeInsets.fromLTRB(0.0, 0, 00, 0),
                    textColor: Colors.white,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(100.0, 10, 100, 10),
                      decoration: const BoxDecoration(),
                      child: const Text('SIGN UP',
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }
}

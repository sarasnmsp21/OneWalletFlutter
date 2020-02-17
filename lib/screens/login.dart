import 'package:flutter/material.dart';
import '../screens/enteropt.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              height: MediaQuery.of(context).size.height * .35,
              width: MediaQuery.of(context).size.width,
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
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text('Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    Text('For registered users',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .28,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.phone_android),
                                hintText: "Phone Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              initialValue: '',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EnterOtpPage()),
                                );
                              },
                              padding: const EdgeInsets.fromLTRB(0.0, 0, 00, 0),
                              textColor: Colors.white,
                              color: Colors.orange,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    100.0, 10, 100, 10),
                                decoration: const BoxDecoration(),
                                child: const Text('SEND OTP',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
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

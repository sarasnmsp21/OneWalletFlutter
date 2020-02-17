import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import '../screens/home.dart';

class EnterOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnterOtp(),
    );
  }
}

class EnterOtp extends StatefulWidget {
  @override
  _EnterOtpState createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
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
                    Text('Enter OTP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    Text(
                        'Sending OTP to 9877777777. To change the number, please go back.',
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
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        PinInputTextField(
                          pinLength: 6,
                          autoFocus: true,
                          textInputAction: TextInputAction.go,
                          onSubmit: (pin) {
                            debugPrint('submit pin:$pin');
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          padding: const EdgeInsets.fromLTRB(0.0, 0, 00, 0),
                          textColor: Colors.white,
                          color: Colors.orange,
                          child: Container(
                            padding:
                                const EdgeInsets.fromLTRB(100.0, 10, 100, 10),
                            decoration: const BoxDecoration(),
                            child: const Text('SUBMIT',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                          child: Text(
                            'Not received code? Resend',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
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

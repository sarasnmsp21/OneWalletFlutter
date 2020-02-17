import 'package:flutter/material.dart';
import 'screens/welcomescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: HomeScreen(),
      ),
    );
  }
}

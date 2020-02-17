import 'package:flutter/material.dart';
// import '../models/billslist.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // BillToPay<BillDetails> billsList = [
  //   BillDetails(
  //     billname: 'Electricity',
  //     billamount: 9887,
  //     billduedate: 20 / 12 / 20,
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 50,
                ),
                Text('Home Page',
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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Bills to pay',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.red,
                        ),
                        height: 100.0,
                        width: 300.0,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Electricity',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 30),
                              Text('77777',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Text('Due Date: 15/01/2020',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.blue,
                        ),
                        height: 100.0,
                        width: 300.0,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Electricity',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 30),
                              Text('77777',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Text('Due Date: 15/01/2020',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.green,
                        ),
                        height: 100.0,
                        width: 300.0,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Electricity',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 30),
                              Text(' 77777',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Text('Due Date: 15/01/2020',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.orange,
                        ),
                        height: 100.0,
                        width: 300.0,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Electricity',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 30),
                              Text('77777',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                              Text('Due Date: 15/01/2020',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white)),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Household Bills',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
                SizedBox(height: 20),
                // GridView.builder(
                //     gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 3),
                //     itemCount: 0,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //           child: new Card(
                //         elevation: 5.0,
                //         child: new Container(
                //           alignment: Alignment.centerLeft,
                //           margin: new EdgeInsets.only(
                //               top: 10.0, bottom: 10.0, left: 10.0),
                //           child: new Text('hello'),
                //         ),
                //       ));
                //     })
              ]),
        ),
      ],
    );
  }
}

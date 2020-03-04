import 'package:flutter/material.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  static var assetsImage1 = new AssetImage('assets/stations/evPlugin.jpg');
  var evPlugin = new Image(
    image: assetsImage1,
    width: 150.0,
    height: 150.0,
  );
  static var assetsImage2 = new AssetImage('assets/stations/Dada_Dev.jpg');
  var Dada_Dev = new Image(
    image: assetsImage2,
    width: 150.0,
    height: 150.0,
  );
  static var assetsImage3 = new AssetImage('assets/stations/NN4.jpg');
  var NN4 = new Image(
    image: assetsImage3,
    width: 150.0,
    height: 150.0,
  );
  static var assetsImage4 =
      new AssetImage('assets/stations/Li-ions_Electric.jpg');
  var lions_electric = new Image(
    image: assetsImage4,
    width: 150.0,
    height: 150.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 10.0),
              width: MediaQuery.of(context).size.width - 20.0,
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  evPlugin,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('EV Plugins',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1hr ago',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Open: 8am-10pm',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 10.0),
              width: MediaQuery.of(context).size.width - 20.0,
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Dada_Dev,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Dada Dev',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1 week ago',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Opens at 9:30am',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 10.0),
              width: MediaQuery.of(context).size.width - 20.0,
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  NN4,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('NN4 Charger',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '2 weeks ago',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Open: 8am-11pm',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 10.0),
              width: MediaQuery.of(context).size.width - 20.0,
              height: 150.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  lions_electric,
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Li-Ions Elec.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '3 weeks ago',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Open: 24/7',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

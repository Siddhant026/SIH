import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

import './booking.dart';
import './negociate.dart';
import './Available.dart';
import './Reciepts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController mapController;

  String searchAddr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Siddhant Sharma'),
            accountEmail: Text('siddhant18csu210@ncuindia.edu'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text(
                'S',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          ListTile(
            title: Text("Bookings"),
            trailing: Icon(Icons.add_shopping_cart),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bookings()));
            },
          ),
          ListTile(
            title: Text("Negociate"),
            trailing: Icon(Icons.people),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Negociate()));
            },
          ),
          ListTile(
            title: Text("Available"),
            trailing: Icon(Icons.offline_pin),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Available()));
            },
          ),
          ListTile(
            title: Text("Reciepts"),
            trailing: Icon(Icons.receipt),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Reciepts()));
            },
          ),
          Divider(),
          ListTile(
            title: Text("SignOut"),
            trailing: Icon(Icons.settings_power),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition:
                  CameraPosition(target: LatLng(28.6139, 77.2090), zoom: 10.0),
            ),
            Positioned(
              top: 30.0,
              right: 15.0,
              left: 15.0,
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Address',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: searchandNavigate,
                          iconSize: 30.0)),
                  onChanged: (val) {
                    setState(() {
                      searchAddr = val;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom : 50,
              right: 30,
              child: 
              FloatingActionButton(
                child: Icon(Icons.add_alert),
                backgroundColor: Colors.red,
                onPressed: () {}
              ),
            )
          ],
        ),
      ),
    );
  }

  searchandNavigate() {
    Geolocator().placemarkFromAddress(searchAddr).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
              LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 10.0)));
    });
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}

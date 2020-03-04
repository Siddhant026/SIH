import 'package:flutter/material.dart';

class Available extends StatefulWidget {
  @override
  _AvailableState createState() => _AvailableState();
}

class _AvailableState extends State<Available> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available'),
      ),
      body: Center(
        child: Text('Loading......', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

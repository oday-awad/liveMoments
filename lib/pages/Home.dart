import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Moments'),
        centerTitle: true,
      ),
      body: Container(
        child: IconButton(
          color: Colors.teal,
          iconSize: 60,
          padding: EdgeInsets.all(20),
          icon: Icon(
            Icons.camera_enhance,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/CameraApp');
          },
        ),
      ),
    );
  }
}

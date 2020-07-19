import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:live_moments/pages/CameraApp.dart';
import 'package:live_moments/pages/Home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(
    MaterialApp(
      title: 'Live Moments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => Home(),
        '/CameraApp': (context) => CameraApp(),
      },
      initialRoute: '/',
    ),
  );
}
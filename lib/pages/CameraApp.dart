import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'camera/Camera.dart';

List<CameraDescription> cameras;

Future<List<CameraDescription>> main() async {
  cameras = await availableCameras();
  return cameras;
}

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Camera(
          camera: cameras[0],
        ),
        Camera(
          camera: cameras[1],
        ),
      ],
    );
  }
}

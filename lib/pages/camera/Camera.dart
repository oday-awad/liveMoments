import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


class Camera extends StatefulWidget {
  CameraDescription camera;

  Camera({this.camera});

  @override
  _CameraState createState() => _CameraState(camera: camera);
}

class _CameraState extends State<Camera> {
  CameraDescription camera;

  _CameraState({this.camera});

  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(camera, ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
//    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Center(
        child: CircularProgressIndicator(
        ),
      );
    } else {
      return Container(
        height: 300,
        color: Colors.red,
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
//          aspectRatio: controller.value.aspectRatio,
          aspectRatio: 1,
          child: CameraPreview(controller),
        ),
      );
    }
  }
}

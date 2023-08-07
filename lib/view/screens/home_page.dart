import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
            style: TextStyle(
              color: Colors.brown,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: InteractiveViewer(
          child: ModelViewer(
            src: 'assets/images/Earth.glb',
            autoRotate: false,
            ar: false,
            cameraControls: true,
          ),
        ),
      ),
    );
  }
}

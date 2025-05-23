import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:untitled3/dashboard.dart';
import 'package:untitled3/home_page.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key, required this.title});
  final String title;

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  CameraController? _controller;
  List<CameraDescription>? _cameras;
  bool _isCameraReady = false;

  Future<void> checkCameraPermissions() async {
    var status = await Permission.camera.request();
    if (status == PermissionStatus.denied ||
        status == PermissionStatus.limited) {
      await Permission.camera.request();
    }else if(status== PermissionStatus.granted){
Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
    }
    else{
      if(status== PermissionStatus.permanentlyDenied) {
        openAppSettings();
      }
    }
  }

  Future<void> _openCamera() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      _cameras = await availableCameras();
      _controller = CameraController(_cameras![0], ResolutionPreset.medium);
      await _controller!.initialize();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => CameraPreviewScreen(controller: _controller!),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Camera permission not granted')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openCamera();
        },
        child: Icon(Icons.camera),
      ),
      body: Center(
        child: Column(
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: Image(image: AssetImage('assets/locations.png')),
            ),
            SizedBox(height: 30),

            Text(
              'Allow Your permissions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                'we will need your location for better experience',
              ),
            ),
            SizedBox(height: 100),

            Text(""),
            InkWell(
              onTap: () {
                checkCameraPermissions();
                // var status = await Permission.camera.request();
                // if (status.isDenied) {
                //   await Permission.camera.request();
                // } else if (status.isPermanentlyDenied) {
                //   openAppSettings();
                // }
              },
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.purple.shade100],
                  ),

                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sure, I d't Like that",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextButton(onPressed: () async{
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Premission rejected"))
              );
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomeScreen(title: "Home Screen")));
                          }, child: Text("Not now")),
          ],
        ),
      ),
    );
  }
}

class CameraPreviewScreen extends StatelessWidget {
  final CameraController controller;

  const CameraPreviewScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Camera Preview")),
      body: Center(child: CameraPreview(controller)),
    );
  }
}

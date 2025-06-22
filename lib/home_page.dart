import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/permissions_screen.dart';

class MyHomeScreen extends StatefulWidget {
 
  const MyHomeScreen({super.key, required this.title});
  
  final String title;
  

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
            [
              Container(
                  height: 200,
                  child: Image(image: AssetImage('assets/logo.png'))),
            SizedBox(height: 30,),

            Text('NotePade',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 70
            ),),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text('You have pushed the button we psudh the button this many times: this is just a randm text for image logo app to show'),
            ),
            SizedBox(height: 100,),

            Text(""),
            InkWell(
              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> PermissionScreen(title: "Allow permissions")));
              },
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(

                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Center(child: Text("Press me")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

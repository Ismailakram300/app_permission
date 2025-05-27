import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "QR Generator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff1A2B7E),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      //  showDialog(context: context, builder: (context) => ,)
                    },
                    icon: Icon(Icons.menu, size: 35,color: Color(0xff1A2B7E),),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4FF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xffA9BBE1), // stroke color
                      width: 2.0, // stroke width
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          //horizontal: 0,
                        ),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "QR Scanner",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff1A2B7E),
                              ),
                            ),
                            Text(
                              "Scan & Create your\nQR Code ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff1A2B7E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/scanner.png',
                          height: 70,
                          width: 70,
                          // optional tint
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Text',
                        imagePath: "assets/text.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Website',
                        imagePath: "assets/website.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Wifi',
                        imagePath: "assets/wifi.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Event',
                        imagePath: "assets/event.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Contacts',
                        imagePath: "assets/contact.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Email',
                        imagePath: "assets/email.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Whatsapp',
                        imagePath: "assets/whatsapp.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Instagram',
                        imagePath: 'assets/insta.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Twitter',
                        imagePath: 'assets/x.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  String name;
  final String imagePath;
  Color color;
  Mycard({required this.imagePath, required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Color(0xFFF1F4FF),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF1F4FF),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xffA9BBE1), // stroke color
            width: 2.0, // stroke width
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 40,
              width: 40,
              // optional tint
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Color(0xff1A2B7E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

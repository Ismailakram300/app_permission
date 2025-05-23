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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Welcome", style: TextStyle(fontSize: 25)),
                  IconButton(onPressed: () {

                  //  showDialog(context: context, builder: (context) => ,)
                  }, icon: Icon(Icons.mail_sharp,size: 35)

                  ),
                ],
              ),

              SizedBox(height: 30),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 50,
                        child: Mycard(
                          color: Colors.purple.shade100,
                          name: 'Contact',
                          icon: Icons.import_contacts,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Contact',
                        icon: Icons.ice_skating_rounded,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Laptop',
                        icon: Icons.image_search,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(

                        color: Colors.purple.shade100,
                        name: 'Ice shake',
                        icon: Icons.import_contacts,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'desktop',
                        icon: Icons.manage_accounts_sharp,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'View',
                        icon: Icons.kebab_dining,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'More Like',
                        icon: Icons.offline_share_outlined,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'Deatils Like',
                        icon: Icons.deck,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Mycard(
                        color: Colors.purple.shade100,
                        name: 'More Like',
                        icon: Icons.dark_mode,
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
  IconData icon;
  Color color;
  Color? Iconcolor=Colors.black45;
   Mycard({
     this.Iconcolor,
    required this.color,
    required this.name,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,color: Iconcolor, size: 18),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

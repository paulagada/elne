import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("About Us"),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Products/Services"),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text("Careers"),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact Us"),
            ),
          ],
        ),
      ),
    );
  }
}

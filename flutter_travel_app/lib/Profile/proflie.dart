import 'package:flutter/material.dart';
import 'package:flutter_travel_app/Profile/body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Body(),
    );
  }
}

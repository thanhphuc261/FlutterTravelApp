import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final img =
      "https://images.unsplash.com/photo-1528127269322-539801943592?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "SignUp",
              style: TextStyle(
                color: Colors.lightBlue.shade200,
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Colors.blue.shade900,
                    offset: Offset(5, 10),
                    blurRadius: 8,
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue.shade100.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue.shade100.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue.shade100.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "FullName",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.lightBlue.shade100.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Phone Number",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                primary: Colors.blue.shade100,
                textStyle: const TextStyle(fontSize: 25),
                backgroundColor: Colors.lightBlue.shade300,
              ),
              onPressed: () {},
              child: Text(
                "Signup",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text("Tài khoản của tôi",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text("Tài khoản của tôi",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text("Tài khoản của tôi",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text("Tài khoản của tôi",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text("Tài khoản của tôi",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

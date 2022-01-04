import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-9/133960815_2784216398505860_9195039724103945185_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=I0QUwBJCu8cAX9_qv-I&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_OIs8p0nIHb6KgafxfL3vpwA6A80jcYHib71CYr71Nog&oe=61F93508"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: TextButton(
            child: Text("Chỉnh sửa"),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.grey.shade300,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "My Accout",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.grey.shade300,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "My Accout",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.grey.shade300,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "My Accout",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.grey.shade300,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  size: 22,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "My Accout",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 50, 50, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text("Quay lại"),
                onPressed: () {},
              ),
              SizedBox(
                width: 30,
              ),
              TextButton(
                child: Text("Đăng Xuất"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_travel_app/Profile/proflie.dart';
import 'package:flutter_travel_app/Home/detail_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.lightBlue.shade300,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.assignment)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView HomePage() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: Container(
              height: 300,
              padding: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/Wallpaper_Ha Giang_Vietnam Tourism.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintText: "Seach right here"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18,
                        bottom: 8,
                        right: 18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Bà Nà Hills",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.navigation,
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "Đà Nẵng",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildCard(
              1,
              "Vũng tàu",
              "Vũng Tàu, vùng Đông Nam Bộ, Việt Nam. Đây là trung tâm kinh tế, tài chính, văn hóa, du lịch, giao thông - vận tải và giáo dục và là một trong những trung tâm kinh tế của vùng Đông Nam Bộ.",
              30),
          _buildCard(
              1,
              "Vũng tàu",
              "Vũng Tàu, vùng Đông Nam Bộ, Việt Nam. Đây là trung tâm kinh tế, tài chính, văn hóa, du lịch, giao thông - vận tải và giáo dục và là một trong những trung tâm kinh tế của vùng Đông Nam Bộ.",
              30),
          _buildCard(
              1,
              "Vũng tàu",
              "Vũng Tàu, vùng Đông Nam Bộ, Việt Nam. Đây là trung tâm kinh tế, tài chính, văn hóa, du lịch, giao thông - vận tải và giáo dục và là một trong những trung tâm kinh tế của vùng Đông Nam Bộ.",
              30),
          _buildCard(
              1,
              "Vũng tàu",
              "Vũng Tàu, vùng Đông Nam Bộ, Việt Nam. Đây là trung tâm kinh tế, tài chính, văn hóa, du lịch, giao thông - vận tải và giáo dục và là một trong những trung tâm kinh tế của vùng Đông Nam Bộ. 00000000000000000000000000000000000000000000222222222222222222222222222222222223333333333333333333",
              30),
        ],
      ),
    );
  }

  var rating = 0.0;
  _buildCard(img, text, text2, price) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            width: 120,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/$img.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "$text",
                                maxLines: 2,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  "$text2",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(10),
                                  primary: Colors.blue.shade100,
                                  textStyle: const TextStyle(fontSize: 18),
                                  backgroundColor: Colors.lightBlue.shade300,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailCard()));
                                },
                                child: Text(
                                  "See more",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

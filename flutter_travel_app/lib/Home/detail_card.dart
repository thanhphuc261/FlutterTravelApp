import 'package:flutter/material.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  _DetailCardState createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  bool _like = true;
  int _so = 41;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Danh lam thắng cảnh"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                width: 400,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text("Nggon hai dang"),
                          Text("Vung tau"),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _like = !_like;
                      if (_like == true) {
                        _so++;
                      } else {
                        _so--;
                      }
                      setState(() {});
                    },
                    icon: (_like
                        ? Icon(Icons.star)
                        : Icon(Icons.star_border_outlined)),
                    color: Colors.red,
                  ),
                  Text(_so.toString()),
                ],
              )
            ],
          ),
        ));
  }
}

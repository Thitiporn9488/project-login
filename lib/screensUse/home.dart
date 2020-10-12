import 'package:flutter/material.dart';

import 'login.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200], // สีพื้นหลัง
      appBar: AppBar(
        title: Text('Corgi', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => Login());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            picture(),
            showtext()
          ],
        ),
      )),
    );
  }

  Text showtext() => Text(
        'Hello Corgi',
        style: TextStyle(fontSize: 28.0),
      );

  Widget picture() {
    return Container(
      width: 140.0,
      height: 140.0,
      child: Image.asset('images/dog.png'),
    );
  }
}
// ที่เหลือก็เอา flutter เชือมกับ Firebase เอา แค่นั้น

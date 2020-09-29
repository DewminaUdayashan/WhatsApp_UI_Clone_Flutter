import 'package:flutter/material.dart';
import 'package:whatsapp_clone/COLORS/Colors.dart';
import 'package:whatsapp_clone/SCREENS/Calls.dart';
import 'package:whatsapp_clone/SCREENS/Camera.dart';
import 'package:whatsapp_clone/SCREENS/Chats.dart';
import 'package:whatsapp_clone/SCREENS/Status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 25),
            ),
            actions: [Icon(Icons.search), Icon(Icons.more_vert)],
            backgroundColor: appBarColor,
            bottom: TabBar(
              indicatorColor: greenColor,
              unselectedLabelColor: greyColor,
              labelColor: greenColor,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 19,
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text('CHATS'),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(100),
                            color: greenColor),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            '07',
                            style: TextStyle(color: backgroundColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Camera(),
              Chats(),
              Status(),
              Calls(),
            ],
          ),
        ));
  }
}

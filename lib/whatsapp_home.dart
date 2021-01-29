import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/pages/dark_mode/home_dark_mode.dart';
import 'package:flutterwhatsappclone/pages/call_screen.dart';
import 'package:flutterwhatsappclone/pages/camera_screen.dart';
import 'package:flutterwhatsappclone/pages/chat_screen.dart';
import 'package:flutterwhatsappclone/pages/status_screen.dart';

import 'main.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({this.cameras});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {

  var _icon = Icons.brightness_2;
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("WhatsApp"),

        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,

          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(text: "CALLS",),
          ],

        ),

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:  IconButton(
              icon: Icon(
                _icon,
                color: Colors.black87,
                size: 25,
              ),
              onPressed: () {

                if (_icon == Icons.brightness_2) {
                  _icon = Icons.wb_sunny;
                  Navigator.push(context,MaterialPageRoute(builder: (context) => WhatsAppHomeDark(cameras:camera)),);


                } else {
                  _icon = Icons.brightness_2;

                }

              },
            ),
          ),
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
}

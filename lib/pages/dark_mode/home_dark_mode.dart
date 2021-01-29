import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/pages/call_screen.dart';
import 'package:flutterwhatsappclone/pages/camera_screen.dart';
import 'package:flutterwhatsappclone/pages/dark_mode/chat_screen_dark.dart';
import 'package:flutterwhatsappclone/pages/dark_mode/status_screen_dark.dart';

import '../../main.dart';
import '../../whatsapp_home.dart';


class WhatsAppHomeDark extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHomeDark({this.cameras});

  @override
  _WhatsAppHomeDarkState createState() => _WhatsAppHomeDarkState();
}

class _WhatsAppHomeDarkState extends State<WhatsAppHomeDark>
    with SingleTickerProviderStateMixin {

  var _icon = Icons.wb_sunny;
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
      backgroundColor: Color(0xff101d25),
      appBar: AppBar(
        backgroundColor: Color(0xff273443),
        title: Text("WhatsApp",style: TextStyle(color: Colors.grey),),
        elevation: 0.7,
        bottom: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Color(0xff1da392),
          controller: _tabController,
          indicatorColor: Color(0xff1da392),

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
            child: IconButton(
              icon: Icon(
                _icon,
                color: Colors.amber,
                size: 25,
              ),
              onPressed: () {

                if (_icon == Icons.wb_sunny) {
                  _icon = Icons.brightness_2;
                  Navigator.push(context,MaterialPageRoute(builder: (context) => WhatsAppHome(cameras:camera)),);


                } else {
                  _icon = Icons.wb_sunny;

                }

              },
            ),
          ),
          Icon(Icons.search,color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert,color: Colors.grey,),


        ],
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreenDark(),
          StatusScreenDark(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
        backgroundColor: Color(0xff1da392),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      )
          : null,
    );
  }
}

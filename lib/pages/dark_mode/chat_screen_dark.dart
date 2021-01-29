import 'package:flutter/material.dart';
import '../../models/chat_model.dart';
// import '../models/chat_model.dart';
// import '../models/chat_model.dart';

class ChatScreenDark extends StatefulWidget {
  @override
  ChatScreenDarkState createState() {
    return new ChatScreenDarkState();
  }
}

class ChatScreenDarkState extends State<ChatScreenDark> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(

      itemCount: chatData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[

          new Divider(
            height: 10.0,
          ),

          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              // backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
              backgroundImage: new AssetImage(chatData[i].imgPath),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  chatData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
                new Text(
                  chatData[i].time,
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
              child: new Column(
                children: [
                  Text(
                    chatData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  SizedBox(height: 20,),
                  Container(height: 0.2,color: Colors.grey[50])
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/chat_model.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[

              // new Divider(
              //   height: 10.0,
              // ),

              new ListTile(
                leading: new CircleAvatar(

                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new AssetImage(chatData[i].imgPath),

                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: new Text(
                        chatData[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Text(
                      chatData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5,bottom: 10),
                    child: new Column(
                      children: [
                        Text(
                          chatData[i].message,
                          style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                        SizedBox(height: 20,),
                        Container(height: 0.2,color: Colors.grey[900])
                      ],
                    )
                ),
              )
            ],
          ),
    );
  }
}

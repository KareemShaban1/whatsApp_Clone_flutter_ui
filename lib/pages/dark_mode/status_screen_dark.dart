import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/models/story_model.dart';
import 'package:flutterwhatsappclone/pages/story_page_view.dart';

class StatusScreenDark extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff101d25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Color(0xff101d25),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                        radius: 30,
                        backgroundImage:AssetImage('assets/images/img1.jpg')
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
                subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.grey),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Color(0xff101d25),
              child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context,index){

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(statusData[index].imgPath),
                    ),
                    title: Text(
                      statusData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    subtitle: Text(statusData[index].time,style: TextStyle(color: Colors.grey),),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  );
                },

              ),
            ),
          ),

        ],
      ),
    );
  }
}

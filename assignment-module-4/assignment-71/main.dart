import 'package:assignment_71/audio.dart';
import 'package:assignment_71/gallery.dart';
import 'package:assignment_71/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp>
{
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Gallery Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Audio Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Video Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(centerTitle: true,title: Text("option menu app",style: TextStyle(backgroundColor: Colors.orange),),),
      backgroundColor: Colors.tealAccent,
      body: Center
        (

        ),
      drawer: Drawer
        (
        child: ListView
          (
          children:
          [
            ListTile
              (
              leading: Icon(Icons.browse_gallery),title: Text("gallery"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => gallery()));
              },
            ),
            ListTile
              (
              leading: Icon(Icons.audio_file),title: Text("audio"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => audio()));
              },//contentPadding: RenderErrorBox.padding,
            ),
            ListTile
              (
              leading: Icon(Icons.video_collection),title: Text("video"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => video()));
              },//contentPadding: RenderErrorBox.padding,
            )
          ],
        ),
      ),
    );
  }
}

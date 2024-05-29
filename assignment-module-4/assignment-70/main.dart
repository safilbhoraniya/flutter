import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),));
}
class myapp extends StatefulWidget
{
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp>
{
  int selectedindex = 0;
  static const List<Widget> _widgetoptions =<Widget>
  [
    Text("gallery page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),

    Text("audio page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
    Text("video page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900))
  ];
  void _item(int index)
  {
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Center
          (
            child: _widgetoptions.elementAt(selectedindex),
          ),
      bottomNavigationBar: BottomNavigationBar
        (
          items:
          [
            BottomNavigationBarItem
              (
                icon: Icon(Icons.browse_gallery),
                label: "gallery",
                backgroundColor: Colors.orangeAccent
              ),
            BottomNavigationBarItem
              (
                icon: Icon(Icons.audio_file),
                label: "audio",
                backgroundColor: Colors.orangeAccent,
              ),
            BottomNavigationBarItem
              (
                icon: Icon(Icons.video_collection),
                label: "video",
                backgroundColor: Colors.orangeAccent
              )
          ],
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        iconSize: 50,
        onTap: _item,
        elevation: 2,
        ),
      );
  }
}

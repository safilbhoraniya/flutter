import 'package:assignment_71/main.dart';
import 'package:flutter/material.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset('assets/video.gif',height: 300,width: 300,),
            SizedBox(height: 20,),
            Text("video player",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => myapp()));
            }, child: Text("exit",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),)),
          ],
        ),
      ),
      );
  }
}

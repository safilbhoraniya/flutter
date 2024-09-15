import 'package:assignment_71/main.dart';
import 'package:flutter/material.dart';

class gallery extends StatefulWidget {
  const gallery({super.key});

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {
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
            Image.asset('assets/gallery.gif',height: 300,width: 300,),
            SizedBox(height: 20,),
            Text("gallery page",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
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

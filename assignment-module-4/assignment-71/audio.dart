import 'package:assignment_71/main.dart';
import 'package:flutter/material.dart';

class audio extends StatefulWidget {
  const audio({super.key});

  @override
  State<audio> createState() => _audioState();
}

class _audioState extends State<audio> {
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
                  Image.asset('assets/audio.gif',height: 300,width: 300,),
                  SizedBox(height: 20,),
                  Text("audio player",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
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

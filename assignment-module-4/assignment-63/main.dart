import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("toast message app",style: TextStyle(color: Colors.pinkAccent,backgroundColor: Colors.blue),),),
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [
                Image.asset("asset/toast.png",height: 300,width: 300,),
                SizedBox(height: 20,),
                Image.asset("asset/positive.png",height: 50,width: 50,),
                ElevatedButton
                  (
                    onPressed: ()
                        {
                          Fluttertoast.showToast
                            (
                              msg: "positive button",
                              backgroundColor: Colors.red,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                          );
                        },child: Text("positivie",style: TextStyle(color: Colors.blue),),
                    ),
                Image.asset("asset/nagetive.jpg",height: 50,width: 50,),
                ElevatedButton
                  (
                  onPressed: ()
                  {
                    Fluttertoast.showToast
                      (
                      msg: "nagative button",
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                    );
                  },child: Text("negative",style: TextStyle(color: Colors.blue),),
                ),
                SizedBox(height: 20,),
                Image.asset("asset/neutral.jpg",height: 50,width: 50,),
                ElevatedButton
                  (
                  onPressed: ()
                  {
                    Fluttertoast.showToast
                      (
                      msg: "neutral button",
                      backgroundColor: Colors.red,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      fontSize: 50
                    );
                  },child: Text("neutral",style: TextStyle(color: Colors.blue),),
                )
                
                
              ],
              ),
          ),
      );
  }
}

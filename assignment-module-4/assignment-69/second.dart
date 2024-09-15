import 'package:assignment_69/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detail extends StatefulWidget {

  detail({required this.index});
  int index;

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail>
{
  var leading;
  var data;
  var title;
  var subtitle;

  @override
  void initState() {
    // TODO: implement initState
    data = widget.index;
    if(data == 0)
      {
        leading = 'asset/girl-profile.png';
        title = "nausim ahir";
        subtitle = "nausim@gmail.com";
      }
    if(data == 1)
      {
        leading ='asset/male-profile.png';
        title = "amir vadavia";
        subtitle = "amir@gmail.com";

      }
    if(data == 2)
      {
        leading = 'asset/male-profile.png';
        title = "sahid vadavia";
        subtitle = "sahid@gmil.com";

      }

  }
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Image.asset(leading,width: 200,height: 200),
              Text(title,style: TextStyle(color: Colors.black),),
              Text(subtitle,style: TextStyle(color: Colors.black)),
              Text("welcome to profile",style: TextStyle(color: Colors.black,backgroundColor: Colors.blue),),
              ElevatedButton(onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => myapp()));
                  }, child: Text("exit",style: TextStyle(color: Colors.blue),))

            ],
          )
      );
  }
}

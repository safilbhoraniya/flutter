import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      appBar: AppBar(centerTitle: true,
        title: Text("phone call,and sms app", style: TextStyle(
            color: Colors.black, backgroundColor: Colors.blue),),),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset("asset/callandsms.png",height: 100,width: 100,),
            SizedBox(height: 20,),
            Text("call and sms",style: TextStyle(color: Colors.blue),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              call("6352485375");
            },
                child: Text("call", style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.blue),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              sms();
            },
                child: Text("sms", style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.blue),)),


          ],
        ),
      ),
    );
  }
}

  void call(String s)async
  {
    var url = Uri.parse(s);
    if(await  canLaunchUrl(url))
      {
        await launchUrl(url);

      }
    else
      {
        throw "could not match url";
      }
  }
  void sms()async
  {
    var url = Uri.parse("6352485375");
    if(await canLaunchUrl(url))
    {
      await launchUrl(url);
    }
    else
    {
      throw "Could not launch url";
    }
}

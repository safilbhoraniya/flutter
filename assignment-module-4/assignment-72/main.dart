import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:permission_handler/permission_handler.dart';

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
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  MaterialButton
                    (
                    color: Colors.orangeAccent.shade700,highlightColor: Colors.blue,
                      onPressed: ()
                          {
                            call();
                          },child: Icon(Icons.call),
                    )
                ],



            ),
          ),
      );
  }
  void permison()async
  {
    var status = await Permission.phone.status;
    if(!status.isGranted)
    {
      await Permission.phone.request();
    }
  }

  void call() async
  {
    await FlutterPhoneDirectCaller.callNumber("6352112583");
  }
}

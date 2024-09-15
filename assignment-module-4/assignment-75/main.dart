import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: myapp(),debugShowCheckedModeBanner: false,));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with WidgetsBindingObserver{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    String text = '';

    switch(state){

      case AppLifecycleState.resumed:
        text = "resume";
        break;

      case AppLifecycleState.inactive:
        text = "inactive";
        break;

      case AppLifecycleState.paused:
        text = "paused";
        break;

      case AppLifecycleState.detached:
        text = "detach";
        break;

      case AppLifecycleState.values:

      case AppLifecycleState.hidden:
        // TODO: Handle this case.
    }message(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("activity lifeccycle"),backgroundColor: Colors.blue,),
      body: Center(
        child: Text("app lifecycle",style: TextStyle(color: Colors.black,backgroundColor: Colors.red),),
      ),
    );
  }

  void message(String msg)
  {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.red,
        textColor: Colors.white
    );
  }
}
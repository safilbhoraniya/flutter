import 'dart:convert';
import 'package:assignment_78/model.dart';
import 'package:assignment_78/second.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


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
  Future<List> getdata()async
  {
    var url = Uri.parse("https://safilbhoraniya.000webhostapp.com/assignment_78/view.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }
  Future<List> pullrefresh()async
  {
    var url = Uri.parse("https://safilbhoraniya.000webhostapp.com/assignment_78/view.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("crud app",style: TextStyle(color: Colors.black,backgroundColor: Colors.blueGrey),),),
        body: RefreshIndicator
          (
            onRefresh: pullrefresh,
            child: Center
              (
                child: FutureBuilder<List>
                  (
                    future: getdata(),
                    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot)
                    {
                      if(snapshot.hasData)
                        {
                          return model(list:snapshot.data!!);
                        }
                      if(snapshot.hasError)
                        {
                          Text("network not found");
                        }
                      return CircularProgressIndicator();
                    }
                  )
              ),
          ),
      floatingActionButton: FloatingActionButton
        (
          onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => second()));
        },child: Text("add data"),backgroundColor: Colors.blue,hoverColor: Colors.red,splashColor: Colors.yellowAccent,
        ),
      );
  }
}

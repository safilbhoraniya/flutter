import 'package:assignment_78/edit.dart';
import 'package:assignment_78/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class details extends StatefulWidget {
  late List list;
  late int index;

  details({required this.list,required this.index});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(centerTitle: true,title: Text("detail screen"),),
      //backgroundColor: Colors.lightBlueAccent,
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
          Text(widget.list[widget.index]['name'],
          style: TextStyle(color: Colors.black),),

        MaterialButton
          (
            child: Text("edit"),
            color: Colors.deepOrange,
            hoverColor: Colors.yellowAccent,
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => edit(list:widget.list,index:widget.index)));
            }),
        MaterialButton
          (
          child: Text("Delete"),
          color: Colors.deepPurpleAccent,
          onPressed: ()
          {
            confirm();
          }
        )


          ],
        ),
      ),
    );
  }

  void confirm()
  {
    var url = "https://safilbhoraniya.000webhostapp.com/assignment_78/delete.php";
    http.post(Uri.parse(url),body:
    {
      'name':widget.list[widget.index]['name'],

    });
    Navigator.of(context).push
      (MaterialPageRoute(builder: (BuildContext context)=> myapp()));
  }
}



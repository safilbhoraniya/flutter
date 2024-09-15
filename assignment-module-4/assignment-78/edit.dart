import 'package:assignment_78/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class edit extends StatefulWidget {
  late List list;
  late int index;

  edit({required this.list,required this.index});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit>
{
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("edit-page"),),
        backgroundColor: Colors.lightBlueAccent,
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Your Firstname"),),
                  SizedBox(height: 10,),

                  ElevatedButton(onPressed: ()
                  {
                    _updatedata();
                    Navigator.push(context,MaterialPageRoute(builder: (context) => myapp()));



                  }, child: Text("Update"))
                ],
              ),
          ),
      );
  }

  void _updatedata()
  {
    var url = Uri.parse("https://safilbhoraniya.000webhostapp.com/assignment_78/update.php");
    http.post(url,body:
    {
      "id":widget.list[widget.index]['id'],
      "fname":name.text.toString(),


    });
  }
}

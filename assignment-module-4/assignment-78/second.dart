import 'package:assignment_78/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second>
{
  TextEditingController name = TextEditingController();

  void _insertdata()
  {
    var url = Uri.parse("https://safilbhoraniya.000webhostapp.com/assignment_78/insert.php");
    http.post(url,body:
    {
      "name":name.text.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("second screen"),),
        backgroundColor: Colors.deepOrangeAccent,
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Your name"),cursorColor: Colors.blue,),
                  SizedBox(height: 10,),
                  
                  ElevatedButton(onPressed: ()
                      {
                        _insertdata();
                        Text("insertted");
                        Navigator.push(context, MaterialPageRoute(builder: (context) => myapp()));
                      }, child: Text("add"))

                ],
              ),
          ),
      );
  }
}

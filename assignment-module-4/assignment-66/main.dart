import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),debugShowCheckedModeBanner: false,));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle : true,title: Text("Date and time app"),backgroundColor: Colors.red,),
      body: Center
        (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              TextFormField
                (
                controller: date,
                style: TextStyle(fontWeight: FontWeight.bold),
                // readOnly: true,
                decoration: InputDecoration
                  (
                    border: OutlineInputBorder(),
                    hintText: "Select a date",
                    prefixIcon: IconButton(
                      onPressed: (){
                        showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)).then((value) => date.text = value.toString()
                        );
                      }, icon: Icon(Icons.date_range),
                    )
                ),
              ),
              Image.asset("asset/date1.gif",height: 300,width: 300,),
              // SizedBox(height: 20,width: 20,),
              Text("date and time chhose ",style: TextStyle(color: Colors.black),),
              ElevatedButton(onPressed: ()
                  {
                    Navigator.of(context).pop();
                  }, child: Text("okay"))
            ],
          ),
        ),

    );
  }
}
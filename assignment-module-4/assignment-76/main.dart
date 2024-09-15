import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  TextEditingController num = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double sum = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(centerTitle: true,
        title: Text("sum 2 value", style: TextStyle(
            color: Colors.black, backgroundColor: Colors.orangeAccent),),),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset("assets/addition.png",height: 90,width: 150,),
            TextFormField
              (
              controller: num,
              decoration: InputDecoration(hintText: "enter first value",),
              cursorColor: Colors.orangeAccent,
              cursorHeight: 10,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Colors.black, backgroundColor: Colors.blue),
            ),
            SizedBox(height: 30,),

            Image.asset("assets/plus.png",height: 50,width: 50,),

            TextFormField
              (
              controller: num2,
              decoration: InputDecoration(hintText: "enter second value",),
              cursorColor: Colors.orangeAccent,
              cursorHeight: 10,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Colors.black, backgroundColor: Colors.blue),

            ),
            SizedBox(height: 20, width: 20,),
            ElevatedButton(onPressed: () {
              result();
            },
                child: Text("total", style: TextStyle(color: Colors.black,
                    backgroundColor: Colors.yellowAccent),)),
            SizedBox(height: 20,width: 20,),
            Text("result $sum",style: TextStyle(color: Colors.black,backgroundColor: Colors.greenAccent,fontSize: 50),),
          ],
        ),
      ),
    );
  }

  void result()
  {
    setState(() {
      double number1 = double.tryParse(num.text) ?? 0;
      double number2 = double.tryParse(num2.text) ?? 0;
      sum = number1 + number2;
    });
  }
}

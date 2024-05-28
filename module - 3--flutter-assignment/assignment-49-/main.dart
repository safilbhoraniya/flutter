import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: myapp()));
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
        appBar: AppBar(centerTitle: true,title: Text("colors box"),),
        body: Center
          (
          child: SingleChildScrollView
            (
              child: Column
                (
                  children:
                  [
                    Container(color: Colors.red,height: 200,),
                    SizedBox(height: 10,),
                    Container
                      (
                        child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            shrinkWrap: true,
                            children: List.generate(4, (index)
                            {
                              return Container(color: Colors.blue,);
                            }),
                        ),
                      ),

                    SizedBox(height: 10,),
                    Container
                      (
                        child: GridView.count
                          (
                            crossAxisCount: 3,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 2,
                            shrinkWrap: true,
                            children: List.generate(3, (index)
                            {
                              return Container( color: Colors.yellow,);
                            }),
                          ),
                      )
                  ],
                ),
            ),
          ),
      );
  }
}

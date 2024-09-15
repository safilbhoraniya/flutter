import 'package:assignment_69/second.dart';
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

class _myappState extends State<myapp>
{
  List<String> name =
      [
        "nausim ahir",
        "amir vadavia",
        "sahid vadavia",

      ];
  List<String> email =
      [
        "nausim@gmail.com",
        "amir@gmail.com",
        "sahid@gmail.com",

      ];
  List<String> image =
      [
        'asset/girl-profile.png',
        'asset/Profile-male.jpg',
        'asset/Profile-male.jpg'
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("profile app",style: TextStyle(backgroundColor: Colors.orange),),),
        body: Center
          (
            child: ListView.builder
              (
                itemCount: 3,
                itemBuilder: (context,index)
                {
                  return Card
                    (
                      child: ListTile
                        (
                          leading: Image.asset(image[index]),
                          title: Text(name[index],style: TextStyle(color: Colors.black,backgroundColor: Colors.teal),),
                          subtitle: Text(email[index]),
                          trailing: Icon(Icons.star),
                          onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => detail(index: index)));
                        },
                        ),
                    );

                }
            )

          ),
      );
  }
}

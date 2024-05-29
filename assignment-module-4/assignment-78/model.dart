import 'package:assignment_78/details.dart';
import 'package:flutter/material.dart';


 class model extends StatelessWidget
 {

   late List list;

   model({required this.list});

   @override
   Widget build(BuildContext context) {

    return ListView.builder
      (
        itemCount: 1,
        itemBuilder:(context,i)
        {
          return ListTile
            (
             title: Column
               (
                 children: 
                 [
                   Text(list[i]["name"],style: TextStyle(color: Colors.black),)
                 ],
               ),
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => details(list:list,index:i)));
            },
            );
        }
      );
  }
}

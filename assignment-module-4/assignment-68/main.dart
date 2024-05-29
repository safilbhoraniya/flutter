import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: myapp(),));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  List<String> items =
  [
    'red',
    'yello',
    'green',
    'pink',
    'orange',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("list-app",style: TextStyle(color: Colors.black,fontSize: 30)),
          ),
        body: Container(

          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.purple.shade50,
                  child: ListTile
                    (
                    title: Text(items[index]),
                    onTap: (){
                      item(context,index);
                    },
                  ),
                );
              }),
        )
    );
  }

  void item(context,index)
  {
    showModalBottomSheet(
        backgroundColor: Colors.purple.shade50,
        context: context,
        builder: (BuildContext context){
          return Container(
            child: Wrap(
              children:
              [
                ListTile
                  (
                  leading: Icon(Icons.remove_red_eye),
                  title: Text("View"),
                  trailing: Image.asset("asset/view.gif",height: 50,width: 50,),

                  onTap: (){
                    Navigator.of(context).pop();
                    _viewitem(index);

                  },
                ),

                ListTile
                  (
                  leading: Icon(Icons.edit),
                  title: Text("edit"),
                  trailing: Image.asset("asset/edit.gif",height: 50,width: 50,),
                  
                  onTap: (){
                    Navigator.of(context).pop();
                    _edititem(index);
                  },
                ),

                ListTile
                  (
                  leading: Icon(Icons.delete),
                  title: Text("Delete"),
                  trailing: Image.asset("asset/delete.gif",height: 50,width: 50,),
                  onTap: (){
                    Navigator.of(context).pop();
                    _deleteitem(index);
                  },
                ),
              ],
            ),
          );
        });
  }

  void _viewitem(index)
  {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.greenAccent,
        title: Text("view",style: TextStyle(color: Colors.black),),
        content: Text("${items[index]}",style: TextStyle(color: Colors.black),),
        actions:
        [
          MaterialButton(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black,
            onPressed: (){
              Navigator.of(context).pop();
            },child: Text("exit",style: TextStyle(color: Colors.white),),
          )
        ],
      );
    });
  }

  void _edititem(index)
  {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.purple.shade50,
        title: Text("view the item",style: TextStyle(color: Colors.black),),
        content: Text("edit item, ${items[index]}",style: TextStyle(color: Colors.black),),
        actions:
        [
          MaterialButton(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black,
            onPressed: (){
              Navigator.of(context).pop();
            },child: Text("exit",style: TextStyle(color: Colors.white),),
          )
        ],
      );
    });
  }

  void _deleteitem(index)
  {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.yellow,
        title: Text("]view",style: TextStyle(color: Colors.black),),
        content: Text("delete item ${items[index]}",style: TextStyle(color: Colors.black),),
        actions:
        [
          MaterialButton(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.black,
            onPressed: (){
              setState(() {
                items.removeAt(index);
                Navigator.of(context).pop();
                
              });
            },child: Text("delete item",style: TextStyle(color: Colors.white,backgroundColor: Colors.blue),),
          )
        ],
      );
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: myapp(),));
}

class myapp extends StatefulWidget
{
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}
enum product{wankaner,morbi,rajkot,ahmedabad,surat}
Future<product?> selectionalert(BuildContext context) async
{
  return await showDialog
    (
      context: context,
      builder: (BuildContext context)
      {
        return SimpleDialog
          (
          title: Text("select city"),
          children:
          [
            SimpleDialogOption
              (
                onPressed: ()
                    {
                      Navigator.pop(context,product.wankaner);
                    },child: Text("wankaner"),
              ),
            SimpleDialogOption
              (
                onPressed: ()
                    {
                      Navigator.pop(context,product.morbi);
                    },child: Text("morbi"),
              ),
            SimpleDialogOption
              (
                onPressed: ()
              {
                Navigator.pop(context,product.rajkot);
              },child: Text("rajkot"),
              ),
            SimpleDialogOption
              (
                onPressed: ()
              {
                Navigator.pop(context,product.ahmedabad);
              },child: Text("ahmedabad"),
              ),
            SimpleDialogOption
              (
                onPressed: ()
              {
                Navigator.pop(context,product.surat);
              },child: Text("surat"),
              ),

          ],

        );
      }
  );
}

class _myappState extends State<myapp>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(centerTitle: true,title: Text("selection alert",style:TextStyle(backgroundColor: Colors.tealAccent) ,),),
        backgroundColor: Colors.cyanAccent,
        body: Center
          (

                child: Column
                  (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:
                    [

                      ElevatedButton(onPressed: ()
                      {

                        selectionalert(context);

                      }, child: Text("Selection Alert")),
                      Text("select city",selectionColor: Colors.blue,),
                      Row
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Image.asset("asset/ahmedabad.jpg",height: 150,width: 150,),
                          SizedBox(height: 20,width: 20,),
                          Image.asset("asset/rajkot.jpg",height: 150,width: 150,),
                        ],
                      ),
                      Image.asset("asset/click2.gif",height: 200,width: 200,),
                      Row
                        ( mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Image.asset("asset/mumbai.jpg",height: 150,width: 150,),
                          SizedBox(height: 20,width: 20,),
                          Image.asset("asset/surat.jpg",height: 150,width: 150,),
                        ],
                      )

                    ],
                  ),

              ),

      );
  }
}

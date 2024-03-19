
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const customRedColor = Colors.blue;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: Icon(Icons.menu,color: Colors.white,),
          title: Text('Rich Text Example',style: TextStyle(color: Colors.white),),
          actions: [Icon(Icons.search,color: Colors.white,),
            Icon(Icons.more_vert,color:Colors.white,) ],
        ),
        body : Center(
          child: Text.rich(
              TextSpan(
                children:[
                  TextSpan(text:'single ',style:TextStyle(fontSize:35,fontWeight: FontWeight.bold,color:Colors.blue)),
                  TextSpan(text:'Line ',style:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:Colors.white,backgroundColor:Colors.teal)),
                  TextSpan(text:' Multiple ',style:TextStyle(fontSize:35,fontWeight: FontWeight.bold,color:Colors.orange)),
                  TextSpan(text:' styles',style:TextStyle(fontSize:35,fontWeight: FontWeight.bold,color:Colors.pink,fontStyle:FontStyle.italic)),
                ],
              ),
          ),

        ),
      ),
    );
  }
}
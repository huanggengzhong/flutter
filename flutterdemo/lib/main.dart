import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'test',
      home:Scaffold(
        appBar: new AppBar(
          title:new Text("这是头部"),
          
        ),
        body:new ListView(
          children:<Widget>[
            new Image.network('https://jspang.com/images/next_blog.jpg'),
            new Image.network('https://jspang.com/images/next_blog.jpg'),
            new Image.network('https://jspang.com/images/next_blog.jpg')
          ]
        )
      )
    );
  }
}
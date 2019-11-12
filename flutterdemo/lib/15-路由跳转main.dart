import 'package:flutter/material.dart';

void main(){
 runApp(
   MaterialApp(
     title:'路由导航',
     home:new FirstScreen()
   )
 );
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text('点击下面跳转查看详情页面')),
      body:Center(
        child: new RaisedButton(
          child:Text("去详情页面"),
          onPressed:(){
            Navigator.push(context,
            MaterialPageRoute(builder:(context){
              return SecondScreen();
            })
            );
          }
        ),
      )

    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text("这是详情页")),
        body:Center(
          child:
          RaisedButton(
            child:Text('返回上一页'),
            onPressed:(){
              Navigator.pop(context);//返回上一页,直接调用pop方法,把上下文传过去即可
            }
          )
        )
      )
    );
  }
}
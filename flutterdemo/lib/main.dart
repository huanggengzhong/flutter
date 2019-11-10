// 动态列表的使用
import 'package:flutter/material.dart';

void main()=>runApp(MyApp(
  // 在这里声明数组,下面是生成1000个数组的方式
  items:new List<String>.generate(1000,(i)=>"我是第 $i 个item")
));

class MyApp extends StatelessWidget{
  // 接收上面的参数
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'materialapp',
      home:Scaffold(
        body:new ListView.builder(
          itemCount:items.length,
          itemBuilder:(context,index){
            return new ListTile(
              title:new Text('${items[index]}')
            );
          }
        )
      )
    );
  }
}
// 引入flutter包
import 'package:flutter/material.dart';

// 入口函数
// void main() => runApp(MyApp());//这是简写
void main() {
  return runApp(MyApp());
}
// 声明MyApp类
class MyApp extends StatelessWidget {
// 重写build方法,它返回一个Material风格的组件
  @override
  Widget build(BuildContext context) {
// 在MaterialApp组件的home属性里赋值一个Scaffold组件
    return MaterialApp(
      title: "welcome",
      home: Scaffold(
// 在Scaffold组件里创建appBar和body
        appBar: AppBar(title: Text('This is header')),
// 在body的中间区域添加hello world文本
        body: Center(child: Text('hello world2')),
      ),
      debugShowCheckedModeBanner: false, //去掉右上方的bug
    );
  }
}

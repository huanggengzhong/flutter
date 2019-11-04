import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Text widget',
        home: Scaffold(
          body: Center(
              child: Text(
                  'hello world,哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈',
                  textAlign: TextAlign.left,
                  maxLines:1,
                  overflow:TextOverflow.ellipsis,
                  style:TextStyle(
                    color:Color.fromARGB(255, 255, 0, 150),
                    fontSize: 25.0,
                    decoration:TextDecoration.underline,
                    decorationStyle:TextDecorationStyle.solid
                    
                  )
                  
                  )),
        ));
  }
}

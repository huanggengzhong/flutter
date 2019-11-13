import 'package:flutter/material.dart';
import 'package:heima_app/login/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'黑马头条',//记得MaterialApp的title是无需Text组件的.
      home: LoginPage(),
      debugShowCheckedModeBanner: false//去掉右上角debug
      );
  }
}

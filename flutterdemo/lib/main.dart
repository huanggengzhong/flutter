// 本地图片的使用
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.asset('images/01-jitui.jpg')
    );
  }
}
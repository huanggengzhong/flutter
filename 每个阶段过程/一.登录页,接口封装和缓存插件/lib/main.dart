import 'package:flutter/material.dart';
import 'package:heima_app/login/login.dart';
import 'package:heima_app/home/home.dart';
import 'package:heima_app/moudle/pub.dart';

void main() {
  PubMoudle.isLogin().then((value) {
    runApp(App(value));
  });
}

class App extends StatelessWidget {
  final String token;
  App(this.token);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '黑马头条', //记得MaterialApp的title是无需Text组件的.
        // home: token!=null?Home(): LoginPage(),//有token去主页,没有去登录页,因为测试,先不用
        home:LoginPage(),
        debugShowCheckedModeBanner: false, //去掉右上角debug
        routes: {"/home": (context) => Home()});
  }
}

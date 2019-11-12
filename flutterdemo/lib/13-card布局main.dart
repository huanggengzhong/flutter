// 卡片布局
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        home: Scaffold(
            appBar: AppBar(title: Text('card布局')),
            body: Center(
                child: new Card(
              child: Column(
                //定义垂直布局
                children: <Widget>[
                  ListTile(//每个瓦片
                      title: Text("广东省深圳市龙华区",
                          style: TextStyle(fontWeight: FontWeight.w600)), //标题
                      subtitle: Text('电话:13800138000'), //第二行标题
                      leading: Icon(Icons.account_box, color: Colors.red) //左边内容
                      ) ,
                      new Divider(),//增加边框
                    ListTile(
                      title:Text("广东省深圳市龙华区广东省深圳市龙华区",style:TextStyle(fontWeight:FontWeight.w600)),
                      subtitle: Text('电话:13800138000'),
                      leading:Icon(Icons.add_location,color:Colors.lightBlue)
                    ),
                    new Divider(color:Colors.red),
                    ListTile(
                      title:Text("广东省深圳市龙华区广东省深圳市龙华区",style:TextStyle(fontWeight:FontWeight.w600)),
                      subtitle: Text('电话:13800138000'),
                      leading:Icon(Icons.add_location,color:Colors.lightBlue)
                    ),
                    new Divider(color:Colors.blue)
                ],
              ),
            ))));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: '返回页面参数传递', home: FirstPage()));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("找小姐姐的电话")),
        body: Center(
            child: RouteButton()));
  }

}

class RouteButton extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return RaisedButton(
          child: Text('去找小姐姐'),
          onPressed: () {
            //下面这里调用异步请求,把上下文传递过去
            _navigateToXiaoJieJie(context);
          },
        );
  }
   //准备异步请求函数,里面也是两个上下文方法,大括号前记得写async
  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    //返回后的数据显示
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result'),
    ));
  }
}

 

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("请选择你要的小姐姐")),
        body: Center(
            child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("大长腿小姐姐"),
              onPressed: () {
                Navigator.pop(context, "大长腿电话:1511008888");
              },
            ),
            RaisedButton(
              child: Text("小长腿小姐姐"),
              onPressed: () {
                Navigator.pop(context, "小长腿电话:1511009999");
              },
            ),
          ],
        )));
  }
}

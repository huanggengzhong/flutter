import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录"), elevation: 0.0
          //头部底下阴影
          ),
      body: Container(color: Colors.grey[200], child: Formregist()),
    );
  }
}

// 下面这两个类是有状态组件,它至少需要两个类:StatefulWidget类和State类
class Formregist extends StatefulWidget {
  @override
  _FormregistState createState() => _FormregistState();

  // createState()=>new _FormregistState();简写
}

class _FormregistState extends State<Formregist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //Padding和Container是差不多的,Container会多一点属性
          color: Colors.white,
          padding: EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 5.0), //对称方式填,horizontal是左右,另一个是上下
          child: TextField(
            //输入框
            keyboardType: TextInputType.phone, //键盘输入类型
            decoration: InputDecoration(
                //用于控制TextField的外观显示，如提示文本、背景颜色、边框等。
                prefixIcon:
                    Icon(Icons.mobile_screen_share, color: Colors.grey), //输入图标
                focusedBorder: UnderlineInputBorder(
                    //聚焦边框
                    borderSide: BorderSide(color: Colors.black45)),
                enabledBorder: UnderlineInputBorder(
                    //无焦边框
                    borderSide: BorderSide(color: Colors.black45)),
                hintText: "请输入手机号码", //默认文本
                hintStyle: TextStyle(color: Colors.black38, fontSize: 14.0)),
          ),
        ),
        Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  //左边是灵活布局
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0), //对称方式填,horizontal是左右,另一个是上下
                    child: TextField(
                      //输入框
                      keyboardType: TextInputType.phone, //键盘输入类型
                      decoration: InputDecoration(
                          //用于控制TextField的外观显示，如提示文本、背景颜色、边框等。
                          prefixIcon:
                              Icon(Icons.lock, color: Colors.grey), //输入图标
                          focusedBorder: UnderlineInputBorder(
                              //聚焦边框
                              borderSide: BorderSide.none),
                          enabledBorder: UnderlineInputBorder(
                              //无焦边框
                              borderSide: BorderSide.none),
                          hintText: "请输入验证码", //默认文本
                          hintStyle:
                              TextStyle(color: Colors.black38, fontSize: 14.0)),
                    ),
                  ),
                ),
                Container(
                  //右边验证码
                  alignment: Alignment.center,
                  width: 110.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color:
                          Color.fromRGBO(237, 237, 237, 1.0), //记得透明度要double类型
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Text('获取验证码'),
                ),
                SizedBox(
                  //右边再放个空盒子,占据一点空间
                  width: 10.0,
                )
              ],
            )),
      Container(
        height: 45.0,
        
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,//占满宽
        margin:EdgeInsets.only(top:20.0),//只设置一个
        child: RaisedButton(
          child: Text('登录',style:TextStyle(
            color:Colors.white
          ),),
          onPressed: (){
            
          },
          color:Colors.blue,
          disabledColor:Colors.blue[200],
          elevation: 0.0,//去除下边框
        ),
      )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
// import 'dart:io';//自带的请求需要用到的包
import 'package:dio/dio.dart'; //第三方dio请求要用到的包

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
  // 定义倒计时的信息
  String _verifyStr = '获取验证码';
  int _seconds = 0;
  Timer _timer; //使用前要导入异步包

  // 输入框值

  String username='';
  String smsCode='';

  //定义一个获取验证码的方法
  _getSmsCode() async {
    //这样实现单次点击
    if (_seconds == 0) {
      // 这里执行:
      //一.倒计时方法;
      _startTimer();

      //二.后台网络接口请求;
      // 网络请求的步骤:(记得要使用async await)
      // 1.引入dart.io
      // 2.建立HttpClient;
      // var httpClient=new HttpClient();
      // // 3.构建Uri;
      // var uri=new Uri.http("example.com", '/path',{"name":"黑马"});

      // // 4.发起请求;
      // var request =await httpClient.getUrl(uri);
      // // 5.关闭请求响应
      // var response=await request.close();
      // print(response);

      // dio使用演示
      void getHttp() async {
        try {
          Response response;
          response = await Dio().get(//哎遇到一个巨大的坑,接口是get类型,偏偏官网提示是post请求
            "https://api.apiopen.top/developerLogin",
            data:{"name":'peakchao',"passwd":'123456'},
            );
          return print(response.data);//正确得到
        } catch (e) {
          return print(e);
        }
      }

      getHttp();

    }
  }

  //定义倒计时方法
  _startTimer() {
    // print("定时器方法执行了");
    // _seconds = 60;
    _seconds = 8; //方便测试,这里临时改为8秒
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      //periodic方法参数1是间隔多少时间执行
      //优化定时器增加0判断
      if (_seconds == 0) {
        _cancelTimer(); //执行清除定时器方法
        return; //阻止往下执行
      }
      _seconds--;
      setState(() {
        if (_seconds == 0) {
          _verifyStr = "重新获取";
        } else {
          _verifyStr = '$_seconds(s)';
        }
      });
    });
  }

  //清除定时器方法
  _cancelTimer() {
    _timer.cancel();
  }

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
                onChanged:(value){
                  // print(value);
                  setState((){
                    username=value;
                  });
                }
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
                              onChanged:(value){
                                // print(value);
                                setState((){
                                  smsCode=value;
                                });
                              }
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      //  print("获取了验证码");
                      //  setState(() {
                      //   _verifyStr="60秒倒计时";
                      //  });
                      // //调用定时器方法
                      // _startTimer();
                      //调用优化后的方法
                      _getSmsCode();
                    },
                    child: Container(
                      //右边验证码
                      alignment: Alignment.center,
                      width: 110.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              237, 237, 237, 1.0), //记得透明度要double类型
                          borderRadius: BorderRadius.circular(100.0)),
                      child: Text(_verifyStr),
                    )),
                SizedBox(
                  //右边再放个空盒子,占据一点空间
                  width: 10.0,
                )
              ],
            )),
        Container(
          height: 45.0,

          padding: EdgeInsets.symmetric(horizontal: 10.0),
          width: double.infinity, //占满宽
          margin: EdgeInsets.only(top: 20.0), //只设置一个
          child: RaisedButton(
            child: Text(
              '登录',
              style: TextStyle(color: Colors.white),
            ),
            onPressed:username==''&& smsCode==''? null:(){//null是不可点击
              // 有值后这里发起请求
              print("可以发起请求啦");

            },
            color: Colors.blue,
            disabledColor: Colors.blue[200],//不可点击的颜色
            elevation: 0.0, //去除下边框
          ),
        )
      ],
    );
  }
}

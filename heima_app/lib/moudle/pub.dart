import 'package:dio/dio.dart'; //第三方dio接口请求要用到的包
import 'package:heima_app/moudle/config.dart'; //引入自己的基地址文件
import 'package:shared_preferences/shared_preferences.dart';//引入本地存储

Dio dio = new Dio();

class PubMoudle {
  static httpRequest(method, url, [data]) async {
    //[]代表可传可不传
    // 声明本地存储
      SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      //接口添加本地存储
      // dio.options.headers['Authorization']=prefs.getString('token')??'';//往请求头加token,目前因接口没添加,所以这里测试上不用
      Response response;
      switch (method) {
        case 'get':
          response = await dio.get(Config.baseUrl + url,data:data);
          break;
        case "post":
          response = await dio.post(Config.baseUrl + url,data:data);
          break;
      }
      return response;
    } catch (err) {
      //错误
      print(err);
    }
  }

  static isLogin() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
  }
}

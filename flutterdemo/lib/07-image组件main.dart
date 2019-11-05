import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '',
        home: Scaffold(
            body: Center(
                child: Container(
          child: new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572932605135&di=71280a1ade2a2fabe29ae93c17c99449&imgtype=0&src=http%3A%2F%2Fstatic.chinacaipu.com%2Fuploads%2Fimg%2Fc%2F21442972740.jpg',
            scale: 1.0,
            // fit:BoxFit.fitWidth,
            color: Colors.greenAccent,
            colorBlendMode: BlendMode.darken,
            repeat: ImageRepeat.repeat,
          ),
          width: 500.0,
          height: 400.0,
          color: Colors.lightBlue,
        ))));
  }
}

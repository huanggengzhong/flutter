// import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title:"Row布局",
//       home:Scaffold(
//         appBar: AppBar(title:Text('水平方向布局')),
//         body:Row(
//           children:<Widget>[
//             RaisedButton(
//               child:Text('蓝色按钮'),
//               color:Colors.lightBlue,
//               onPressed:(){}
//             ),
//             RaisedButton(
//               child:Text('红色按钮'),
//               color:Colors.redAccent,
//               onPressed:(){}
//             ),
//             RaisedButton(
//               child:Text('黄色按钮'),//文字超出会警告
//               color:Colors.orangeAccent,
//               onPressed: (){},
//             )
//           ]
//         )
//       )
//     );
//   }
// }

// import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title:'切换文字',
//       home:Scaffold(
//         appBar:AppBar(title:Text("灵活水平布局")),
//         body:Row(
//           children: <Widget>[
//             RaisedButton(
//               child: Text("蓝色按钮"),
//               color:Colors.lightBlue,
//               onPressed: (){},
//             ),
//             Expanded(
//               child:RaisedButton(
//                 child:Text('红色按钮'),
//                 color:Colors.redAccent,
//                 onPressed: (){},
//               )
//             ),
//             Expanded(
//               child:RaisedButton(
//                 child:Text('黄色按钮'),
//                 onPressed:(){},
//                 color:Colors.orangeAccent
//               )
//             )
//           ],
//         )

//       )
//     );
//   }
// }

// 垂直布局

import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'',
      home:Scaffold(
        appBar:AppBar(title:Text('垂直布局')),
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center,//主轴
          crossAxisAlignment: CrossAxisAlignment.start,//副轴
          children: <Widget>[
            Text('第一行第一行第一行'),
           Expanded(
             child: Text('第二行'),//这里自适应
           ) ,
            Text('第三行第三行第三行第三行第三行第三行第三行')
          ],
        )
      )
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: '',
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("Stack层叠布局"),
//             ),
//             body: Center(
//                 child: new Stack(
//               alignment: const FractionalOffset(0.5, 0.5),
//               children: <Widget>[
//                 new CircleAvatar(
//                   backgroundImage: new NetworkImage(
//                       'https://avatars1.githubusercontent.com/u/45531884?s=460&v=4'),
//                   radius: 100.0,
//                 ),
//                 new Container(
//                     decoration: new BoxDecoration(color: Colors.lightBlue),
//                     padding: EdgeInsets.all(5.0),
//                     child: new Text('我是层叠文本'))
//               ],
//             ))));
//   }
// }

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
            appBar: AppBar(
              title: Text("Stack层叠布局"),
            ),
            body: Center(
                child: new Stack(children: <Widget>[
              new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://avatars1.githubusercontent.com/u/45531884?s=460&v=4'),
                      radius: 100.0,
                      ),
              new Positioned(
                top:10.0,
                left:40.0,
                child:Text('定位内容1')
              ),
              new Positioned(
                right: 50.0,
                bottom: 20.0,
                child:Text('定位内容2')
              )
            ]))));
  }
}

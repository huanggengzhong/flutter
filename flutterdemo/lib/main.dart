// 网格布局的使用

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'GridView',
//         home: Scaffold(
//             body: GridView.count(
//           padding: const EdgeInsets.all(20.0),
//           crossAxisSpacing: 10.0,
//           crossAxisCount: 3, //每行显示的列数
//           children: <Widget>[
//             Icon(Icons.ac_unit),
//             Icon(Icons.airport_shuttle),
//             Icon(Icons.all_inclusive),
//             Icon(Icons.beach_access),
//             Icon(Icons.cake),
//             Icon(Icons.free_breakfast)
//           ],
//         )));
//   }
// }

//图片布局
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GridView',
        home: Scaffold(
            body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.7),
          children: <Widget>[
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2571762536.webp'),
            new Image.network(
                'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.webp'),
            new Image.network(
                'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.webp'),
            new Image.network(
                'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.webp'),
          ],
        )));
  }
}

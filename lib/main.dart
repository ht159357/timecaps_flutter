import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true, // debug模式下是否显示材质网格
      showPerformanceOverlay: true, // GPU和UI曲线图
      checkerboardRasterCacheImages: true, // 光栅缓存图像的棋盘格
      theme: new ThemeData(
        primarySwatch: Colors.red, //主题色
      ),
      title: 'TimeCapsApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TimeCaps'),
        ),
        body: Container(
          child: Text(
            'hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world hello world ',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 255, 125, 255),
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}

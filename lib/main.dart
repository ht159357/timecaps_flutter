import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MyApp(
        items: List<String>.generate(1000, (i) => 'Item $i'),
      ),
    );

String appName = 'TimeCaps';

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeCapsApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2.0, // 纵轴网格间距
            crossAxisSpacing: 2.0, // 横向网格间距
            crossAxisCount: 3, // 每行显示的列数
            childAspectRatio: 1.0, // 宽高比
          ),
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset(
          'assets/images/person_back.jpg',
          height: 100.0,
          fit: BoxFit.cover,
        ),
        ListTile(
          leading: ClipOval(
            child: Image.asset('assets/images/avatar.jpeg',
                height: 30.0, fit: BoxFit.cover),
          ),
          title: Text('Haroro', maxLines: 2, overflow: TextOverflow.ellipsis),
          subtitle: Text('18119921782'),
          trailing: GestureDetector(
            child: Icon(Icons.sms),
            onTap: () => _message(),
          ),
          enabled: true,
          selected: false,
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('www.baidu.com'),
          trailing: GestureDetector(
            child: Icon(Icons.open_in_new),
            onTap: () => _openBrower(),
          ),
        )
      ],
    );
  }
}

//拨打电话
_call() async {
  const url = 'tel:18119921782';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//发送短信
_message() async {
  const url = 'sms:18119921782';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//打开外部浏览器
_openBrower() async {
  const url = 'https://baidu.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//打开外部应运用
_openOtherApp() async {
  /**
     * weixin://
     * alipays://
     */
  const url = 'alipays://';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      MyApp(
        items: List<String>.generate(1000, (i) => 'Item $i'),
      ),
    );

String appName = 'TimeCaps';
String imageSrc = 'assets/images/person_back.jpg';

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
        body: Row(
          children: <Widget>[
            RaisedButton(
              child: Text('按钮一'),
              color: Colors.red,
            ),
            Expanded(
              child: RaisedButton(
                child: Text('按钮二'),
                color: Colors.green,
              ),
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewRoute()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5.0, // 纵轴网格间距
        crossAxisSpacing: 5.0, // 横向网格间距
        crossAxisCount: 3, // 每行显示的列数
        childAspectRatio: 1.0, // 宽高比
      ),
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset(
          imageSrc,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        ListTile(
          leading: ClipOval(
            child: Image.asset(
              'assets/images/avatar.jpeg',
              height: 30.0,
              fit: BoxFit.cover,
            ),
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

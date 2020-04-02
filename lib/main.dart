import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

String appName = 'TimeCaps';
String headIcon = 'https://tuchong.pstatp.com/314506/f/4196061.jpg';
String phone = '18119921782';
String username = 'SunnyHaroro';
String card = '6288888888888888';
String money = '3000.00';

class MyApp extends StatelessWidget {
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
    const url = 'https://flutter.dev';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeCapsApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/person_back.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            ),
            ListTile(
              leading: ClipOval(
                child: Image.asset(
                  'assets/images/avatar.jpeg',
                  height: 30.0,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              title: Text(
                username,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(phone),
              trailing: GestureDetector(
                child: Icon(Icons.phone),
                onTap: () => _call(),
              ),
              enabled: true,
              selected: false,
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text(card),
              trailing: GestureDetector(
                child: Icon(Icons.open_in_new),
                onTap: () => _openBrower(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

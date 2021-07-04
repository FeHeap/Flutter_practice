import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appName = '自定義主題';

    return MaterialApp(
      title: appName,
      //主題配置
      theme: ThemeData(
        //應用程序整體主題亮度
        brightness: Brightness.light,
        //App主要部分背景顏色
        primaryColor: Colors.amber[600],
        //前景色(文本、按鈕等)
        accentColor: Colors.deepPurple[200],
      ),
      home: MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  //標題
  final title;
  //接收title值key為widget的唯一標準
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            '帶有背景顏色的文本組件',
            //獲取主題的文本樣式
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      floatingActionButton: Theme(
        //使用copyWith的方式獲取accentColor
        data: Theme.of(context).copyWith(accentColor: Colors.grey),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.computer),
        ),
      ),
    );
  }
}
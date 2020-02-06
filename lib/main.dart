import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/*
*
*
* */
/*
  StatelessWidget: 상태변화를 가질 수 없는 위젯틀
  StatefullWidget: 페이지의 텍스트가 변경된다든지 등의 변화가 가능한 위젯

  home: Scaffold 위젯이어야 해당 Material디자인이 적용이 됨


 */


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Text('헬로 월드'), // 오직 문자만 나타남, 전혀 디자인이 적용되지 않은 상
      home: Scaffold(
        appBar: AppBar( // 타이
          title: Text('안녕')
        ),
        body: Text(
            '내용',
          style: TextStyle(fontSize: 30),
        )
      ), // MaterialApp 디자인이 적용된 상태
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
    return Container();
  }
}


class HelloPage extends StatefulWidget {
  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


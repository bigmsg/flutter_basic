import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      home: HomePage('Hello World')
    );
  }
}



class HomePage extends StatefulWidget {
  final String title;


  HomePage(this.title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _message = "Hello World";
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _changeMessage
      ),
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$_counter", style: TextStyle(fontSize: 30)),
            Text(
                "글자내용",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Color(0xFFaa0000),
                    fontStyle: FontStyle.italic
                ),
            )

          ],
        ),
      ),
    );
  }


  void _changeMessage() {
    setState(() {
      _message = "헬로월드";
      _counter++;
    });
  }
}




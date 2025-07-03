import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var randoNumber = 0;
  var text = '???';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: Text('Número da Sorte', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 100),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Clique no botão abaixo e confira seu número da sorte',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Text(
                  '???',
                  style: TextStyle(color: Colors.black87, fontSize: 80),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sorte'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8716d5),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

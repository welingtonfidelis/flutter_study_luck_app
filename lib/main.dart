import 'dart:math';

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
  var _randomNumber = 0;
  var _text = '???';
  final List<int> _sortedList = [];
  var _alreadySorted = false;

  void _generateRandom() {
    setState(() {
      _randomNumber = Random().nextInt(10) + 1;
      _text = _randomNumber.toString();

      if (_sortedList.contains(_randomNumber)) {
        _alreadySorted = true;
      } else {
        _sortedList.add(_randomNumber);
        _sortedList.sort();
        _alreadySorted = false;
      }
    });
  }

  void _resetState() {
    setState(() {
      _sortedList.clear();
      _text = '???';
      _alreadySorted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: Text('Número da Sorte', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                  _text,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                if (_alreadySorted)
                  Text(
                    'O número ${_randomNumber} já foi sorteado',
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _generateRandom,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8716d5),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 20,
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('Sorte'),
                  ),
                ),

                if (_sortedList.isNotEmpty)
                  Text(
                    _sortedList.toString(),
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _resetState,
          backgroundColor: Colors.black87,
          child: Icon(Icons.refresh, color: Colors.white),
        ),
      ),
    );
  }
}

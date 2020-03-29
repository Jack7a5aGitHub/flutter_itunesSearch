import 'package:flutter/material.dart';
import './ui/itunes_search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AppBar _appBar = AppBar(
            title: Text('Welcome to Flutter'),
          );
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: _appBar,
          body: ItunesSearchScreen()
          ),
    );
  }
}

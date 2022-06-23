import 'package:flutter/material.dart';
import 'package:horizantal/screen/horizontal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Horizantal View'),
            centerTitle: true,
          ),
          body: HorizantalDisplay(),
        ),
      ),
    );
  }
}

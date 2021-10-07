import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void massage() {
  print('Wellcome to my Shop');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Assaign a another StateLessWidget in home widget
      // for using MediaQuery
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rahim Shop'),
          leading: Icon(Icons.skateboarding),
          actions: [
            IconButton(onPressed: (massage), icon: Icon(Icons.ac_unit_outlined))
          ],
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 4,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}

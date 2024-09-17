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
    //
    return SafeArea(
      //Scaffold Work like main layout for an app
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Rahim Shop'),
          leading: Icon(Icons.skateboarding),
          actions: [
            IconButton(onPressed: (massage), icon: Icon(Icons.ac_unit_outlined))
          ],
        ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Positioned(
                bottom: -20,
                child: CircleAvatar(
                  child: Icon(Icons.camera),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

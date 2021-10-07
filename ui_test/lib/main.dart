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
        body: ListView(
          children: [
            ListTile(
              title: Text(
                  'www.facebook.com/profile.php?id=100008350303339&sk=about'),
              leading: CircleAvatar(
                child: Icon(Icons.facebook),
              ),
              trailing: Icon(Icons.manage_accounts),
              tileColor: Colors.lime,
            ),
            ListTile(
              title: Text('abdurrahimcmt@gmail.com'),
              leading: CircleAvatar(
                child: Icon(Icons.mail_outline_sharp),
              ),
              trailing: Icon(Icons.ac_unit),
            ),
            ListTile(
              title: Text('www.instagram.com/abdurrahimrrs/'),
              leading: CircleAvatar(
                child: Icon(Icons.find_in_page),
              ),
              trailing: Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
    );
  }
}

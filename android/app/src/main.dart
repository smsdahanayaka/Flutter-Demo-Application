import 'package:flutter/material.dart';

import 'LoginPage.dart';


void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange
      ),
      home: loginPage(),
    );
  }
}

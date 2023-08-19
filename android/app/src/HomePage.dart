import 'package:flutter/material.dart';

import 'LoginPage.dart';

class HomeScreen extends StatefulWidget {
  final String user;
  const HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateLogScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome ${widget.user}"),
        actions: [
          IconButton(onPressed: ()=>{
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginPage()))
          }, icon:Icon(Icons.arrow_back))
        ],
      ),
    );
  }

  void navigateLogScreen(){
    Future.delayed(Duration(seconds: 30),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginPage()));
    });
  }
}


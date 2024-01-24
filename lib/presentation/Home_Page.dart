import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  final String username;
  const HomePage({super.key, required this.username});
  @override
  State<HomePage> createState()=> _HomePage();
}

class _HomePage extends State<HomePage>{
  List<String> listChat=[];
  // Map<String, Li>

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat Page',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(

      ),
    );
  }
}
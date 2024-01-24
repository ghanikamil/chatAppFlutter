import 'package:flutter/material.dart';
import 'package:mini_project_chat_app/presentation/Home_Page.dart';



class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState()=> _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0,0,0,10),
                alignment: Alignment.center,
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(username:_usernameController.text)));
                  },
                  child: Text('Login')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
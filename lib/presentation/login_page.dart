import 'package:flutter/material.dart';
import 'package:mini_project_chat_app/presentation/chat_room_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState()=> _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat Page',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding:  EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Masuk untuk mengirim pesan'),
            SizedBox(height: 10,),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>ChatRoomPage(username: _usernameController.text))
                  );
                },
                child: Text('Masuk')
            )
          ],
        ),
      ),
    );
  }
}
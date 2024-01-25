

import 'package:flutter/material.dart';
import 'package:mini_project_chat_app/domain/usecase/get_room.dart';
import 'package:mini_project_chat_app/domain/usecase/get_user.dart';
import 'package:mini_project_chat_app/presentation/chat_page.dart';

class ChatRoomPage extends StatefulWidget{
  final String username;
  const ChatRoomPage({super.key, required this.username});

  @override
  State<ChatRoomPage> createState()=> _ChatRoomPage();
}

class _ChatRoomPage extends State<ChatRoomPage>{
  List<String> listChat=[];
  List<String> listRoom=[];
  Map<String, List<Map<String, dynamic>>> roomMessages={};

  @override
  void initState(){
    super.initState();
    GetUser().execute(widget.username).then((result){
      setState(() {
        listRoom= result.cast<String>();
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat Page',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height-kToolbarHeight,
        child: FutureBuilder<List>(
          future: GetRoom().execute(widget.username),
          builder: (context, snapshot){
            if (snapshot.hasData){
              var listChat = snapshot.data!;
              return ListView(
                children: List.generate(listChat.length, (i){
                  print(listRoom[i]);
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>ChatPage(
                              roomId:listRoom[i],
                              username: widget.username
                          )
                      ));
                    },
                    child: ListTile(
                      title: Text('${listChat[i]['users'][1]}'),
                    ),
                  );
                }),
              );
            }
            else if((snapshot.hasError)){
              return Text('${snapshot.error}');
            }
            else{
              return const Text('Belum ada chat');
            }
          },
        ),
      ),
    );
  }
}
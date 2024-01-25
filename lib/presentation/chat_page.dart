import 'package:flutter/material.dart';
import 'package:mini_project_chat_app/domain/usecase/get_chat.dart';

class ChatPage extends StatefulWidget{
  final String roomId;
  final String username;
  const ChatPage({super.key, required this.roomId, required this.username});


  @override
  State<ChatPage> createState()=>_ChatPage();
}
class _ChatPage extends State<ChatPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat Page',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                future: GetChat().execute(widget.roomId),
                builder: (context, snapshot){
                  var data = snapshot.data!;
                  return ListView(
                      children: List.generate(data.length,(i){
                        return GestureDetector(
                          onTap: (){},
                          child: Card(
                            child: Column(
                              children: [
                                Text('${data[i]['username']}'),
                                Text('${data[i]['text']}'),
                              ],
                            ),
                          ),
                        );
                      })
                  );
                },
              )
          )
        ],
      ),
    );
  }
}
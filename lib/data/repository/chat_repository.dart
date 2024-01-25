

import 'dart:convert';

import 'package:mini_project_chat_app/data/datasource/chat_api_datasource.dart';


class ChatRepositories {
  var chatApiDatasources = ChatApiDatasource();

  Future<List> getUser(String username) async{
    var jsonArray = jsonDecode(await chatApiDatasources.getUser(username))['data'];
    var listChat=[];
    listChat = List<String>.from(jsonArray['rooms']);
    return listChat;
    // var listChatUser = jsonDecode(await chatApiDatasources.getUser(username))['data']['rooms'];
    // return listChatUser;
  }

  Future<List> getRoom(String username) async{
    var listChatRoom = jsonDecode(await chatApiDatasources.getRoom(username))['data'];
    return listChatRoom;
  }

  Future<List> getChat(String id) async{
    var chat = (jsonDecode(await chatApiDatasources.getChat(id))['data']['messages'] as List<dynamic>).cast<Map<String, dynamic>>().toList();
    return chat;
  }

}
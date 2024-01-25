import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatApiDatasource {
  static const url = 'http://127.0.0.1:8080';

  Future<String> getUser(String username) async{
    var response = await http.get(Uri.parse('${url}/api/user/${username}'));
    return response.body;
  }

  Future<String> getRoom(String username) async{
    var response = await http.get(Uri.parse('${url}/api/room/${username}'));
    return response.body;
  }

  Future<String> getChat(String id) async{
    var response = await http.get(Uri.parse('${url}/api/chat/${id}'));
    return response.body;
  }

}
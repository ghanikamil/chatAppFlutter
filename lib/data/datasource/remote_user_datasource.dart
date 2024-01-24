import 'package:http/http.dart' as http;

class RemoteUserDatasource{
  static const URL = 'http://127.0.0.1:8080';
  
  Future<String> getUser(String username) async{
    var response = await http.get(Uri.parse('${URL}/api/user/${username}'));
    return response.body;
  }

  Future<String> getRoom(String room) async{
    var response = await http.get(Uri.parse('${URL}/api/room/${room}'));
    return response.body;
  }

  Future<String> getChat(String chat) async{
    var response = await http.get(Uri.parse('${URL}/api/chat/${chat}'));
    return response.body;
  }

}
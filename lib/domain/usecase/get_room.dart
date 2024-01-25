
import 'package:mini_project_chat_app/data/repository/chat_repository.dart';

class GetRoom {
  var repository = ChatRepositories();

  Future<List> execute(username){
    return repository.getRoom(username);
  }
}

import 'package:mini_project_chat_app/data/repository/chat_repository.dart';

class GetUser{
  var repository = ChatRepositories();

  Future<List> execute(username){
    return repository.getUser(username);
  }
}
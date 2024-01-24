import 'package:mini_project_chat_app/data/repository/user_repository.dart';

class GetUser{
  var repository=UserRepository();

  Future<List> execute(username){
    return repository.getUser(username);
  }
}
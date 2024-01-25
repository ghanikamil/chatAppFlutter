

import 'package:mini_project_chat_app/data/repository/chat_repository.dart';

class GetChat{
  var repository= ChatRepositories();

  Future<List> execute(id){
    return repository.getChat(id);
  }
}
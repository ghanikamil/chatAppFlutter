import 'dart:convert';

import 'package:mini_project_chat_app/data/datasource/remote_user_datasource.dart';

class UserRepository{
  var remoteUserDatasource = RemoteUserDatasource();

  Future<List> getUser(String username) async{
    var jsonArray = jsonDecode(await remoteUserDatasource.getUser(username))['data'];
    var listUser =jsonArray['rooms'];
    return listUser;
  }

  Future<List> getRoom(String room) async{
    var listRoom = jsonDecode(await remoteUserDatasource.getRoom(room))['data'];
    var listUser =listRoom['rooms'];
    return listRoom;
  }

}
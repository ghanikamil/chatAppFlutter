import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, dynamic> listUser = {};

  @override
  void initState() {
    super.initState();
    fetchListUserData();
  }

  Future<void> fetchListUserData() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8080/api/user/adinugraha'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        listUser = data['data'];
      });
    } else {
      throw Exception('Failed to load listUser data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListUser Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ListUser Data:'),
            Text('$listUser'),
          ],
        ),
      ),
    );
  }
}
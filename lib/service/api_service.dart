import 'dart:convert';

import 'package:project_api/config/config.dart';
import 'package:project_api/model/users.dart';
import 'package:project_api/model/photos.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<Users>?> getUsers() async{
    var url = Uri.parse('${baseURL}/users');
    print(url);

    var response = await http.get(url);
    print(response.body);


    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((user) => Users.fromJson(user)).toList();
    } else {
      print('Request Gagal dengan Status: ${response.statusCode}.');
      return null;
    }
  }

  Future<List<Photos>?> getPhotos() async{
    var url = Uri.parse('${urlNews}/photos');
    print(url);

    var response = await http.get(url);
    print(response.body);

    if(response.statusCode == 200){
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((photo) => Photos.fromJson(photo)).toList();
    } else {
      print('Request Gagal dengan Status: ${response.statusCode}.');
      return null;
    }
  }
}
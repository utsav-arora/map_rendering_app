import 'dart:convert';

import 'package:map_rendering/resourses/user_model.dart';
import 'package:http/http.dart' as http;

class Data{
  List allData=[];
  Future getUserData() async{
      var response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=2')
      );
      var jsonData = jsonDecode(response.body);

        jsonData['data'].forEach((element){
         UserModel userModel = UserModel(email: element['email'],
              avatar: element['avatar'],
              firstName: element['first_name'],
             lastName: element['last_name']);
         allData.add(userModel);
        });
  }
}
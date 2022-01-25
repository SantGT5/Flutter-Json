import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_json/models/user.dart';
import 'package:flutter_json/models/user_my_json.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import "package:get/get.dart";

import "package:http/http.dart" as http;

class JsonController extends GetxController {
  var jsonResultUsers;

  final Rx<List<User>> _usersList = Rx<List<User>>([]);

  List<User> get users => _usersList.value.obs;

  @override
  void onReady() {
    loadJson();
  }

  loadJson() async {
    String data = await rootBundle.loadString("assets/users.json");

    jsonResultUsers = jsonDecode(data);
    _usersList.value = UserMyJson.fromJson(jsonResultUsers).users;
  }

  // var url = Uri.parse("https://reqres.in/api/users?page=2");

  // http.get(url).then((res) {

  // })
}

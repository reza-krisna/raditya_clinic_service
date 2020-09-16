import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'user.dart';

class Authenticator {

  var config;
  User user;

  //constructor
  Authenticator(){
    loadConfig();
  }

  Future<String> loadConfig() async{
    final configFile = await rootBundle.loadString('utils/utils_config.json');
    var config = jsonDecode(configFile);

    return configFile;
  }

}
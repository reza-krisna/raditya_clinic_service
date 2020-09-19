import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user.dart';


class Authenticator {

  var config;
  // User user;

  //constructor
  Authenticator(){
    loadConfig();
  }

  Future<dynamic> loadConfig() async {
    final configFile = await rootBundle.loadString('packages/raditya_clinic_service/utils/authenticator/auth_config.json');
    var config = jsonDecode(configFile);

    // debugPrint(configFile);
    return config;
  }

  Future<dynamic> getCurrentUser() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    String userJson = localStorage.getString('user');
    if(userJson != null){
      var userJsonDecoded = jsonDecode(userJson);
      User currentUser = new User(
        userId: userJsonDecoded['userId'],
        userToken: userJsonDecoded['userToken'],
        email: userJsonDecoded['email'],
        isRegistered: userJsonDecoded['isRegistered'],
        emailVerified: userJsonDecoded['emailVerified'],
        phoneNumber: userJsonDecoded['phoneNumber'],
        patientData: userJsonDecoded['patientData']
      );

      return currentUser;
    }
    return null;
  }

}
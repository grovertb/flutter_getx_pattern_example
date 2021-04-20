import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/repositories/authentication_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _repository = Get.find<AuthenticationRepository>();

  String _username = '', _password = '';

  void onUsernameChange(String text) {
    _username = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  Future<void> onSubmit() async {
    try {
      RequestToken requestToken = await _repository.newRequestToken();
      // final requestToken = Get.arguments as String;

      RequestToken authRequestToken = await _repository.authWithLogin(
        userName: _username,
        password: _password,
        requestToken: requestToken.requestToken,
      );
      print("LOGIN OK");
    } catch (e) {
      print(e);
      String message = "";
      if (e is DioError) {
        message = (e.response != null) ? e.response.statusMessage : e.message;
      }
      Get.dialog(
        AlertDialog(
          title: Text("Error:"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("OK"),
            )
          ],
        ),
      );
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/data/repositories/remote/authentication_repository.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _repository = Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  String _username = '', _password = '';

  void onUsernameChange(String text) {
    _username = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  Future<void> onSubmit() async {
    try {
      // final requestToken = Get.arguments as String;
      RequestToken requestToken = await _repository.newRequestToken();
      RequestToken authRequestToken = await _repository.authWithLogin(
        userName: _username,
        password: _password,
        requestToken: requestToken.requestToken,
      );

      await _localAuthRepository.setSession(authRequestToken);

      Get.offNamed(Routes.HOME);
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

import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Login/LoginController.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                  onChanged: _.onUsernameChange,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  onChanged: _.onPasswordChange,
                ),
                ElevatedButton(
                  onPressed: _.onSubmit,
                  child: Text("Iniciar Sesion"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

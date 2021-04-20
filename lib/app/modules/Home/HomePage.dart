import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomeController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
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

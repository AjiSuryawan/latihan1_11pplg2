import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_button.dart';
import 'package:latihan1_11pplg2/components/custom_textfield.dart';
import 'package:latihan1_11pplg2/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              CustomTextfield(controller: controller.usernameController, label: "username", labelColor: Colors.black, pass: false, isNumber: false),
              CustomTextfield(controller: controller.passwordController, label: "password", labelColor: Colors.black, pass: true, isNumber: false),
              CustomButton(myText: "Login", myTextColor: Colors.black, onPressed: () {
                controller.login();
              },)
            ],
          ),
        ),
      ),
    );
  }
}
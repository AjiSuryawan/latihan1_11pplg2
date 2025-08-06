import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/components/custom_button.dart';
import 'package:latihan1_11pplg2/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String statusLogin= "login status";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to our application",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )), // font, warna, bold
            Text("please fill username and password below"),

            // image dari resource
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                width: 100,
                child: Image.asset('assets/logotim.png')),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: CustomTextfield(controller: txtUsername, label: "Username", 
              labelColor: Colors.black,pass: false,isNumber: false,)
            ), // label / hint . border
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: CustomTextfield(controller: txtPassword, label: "Password", 
              labelColor: Colors.black, pass:true,isNumber: false,)
            ),
             // label / hint . border , tambahkan hidden character
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: CustomButton(myText: "Login",
              onPressed: () {
                print("login button clicked");
              },
              myTextColor: Colors.blue,),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: CustomButton(myText: "Regsiter", 
              onPressed: () {
                print("register button clicked");
              },
              myTextColor: Colors.green,),
            ),
            Text(statusLogin)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/splashscreen_controller.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

  final controller = Get.find<SplashscreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("INI SPLASHSCREEN"),
        ),
      ),
    );
  }
}
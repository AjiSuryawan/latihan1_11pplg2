import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_football_controller.dart';

class EditFootball extends StatelessWidget {
  EditFootball({super.key});

  EditFootballController editFootballController = Get.put(EditFootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit data"),),
      body: Center(
        child: Column(
          children: [
            TextField(controller: editFootballController.nameController,)
          ],
        ),
      ),
    );
  }
}
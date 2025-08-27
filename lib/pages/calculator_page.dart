import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_button.dart';
import 'package:latihan1_11pplg2/components/custom_textfield.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Column(
        children: [
          CustomTextfield(controller: calculatorController.txtAngka1, label: "input angka 1", 
          labelColor: Colors.green, pass: false,isNumber: true,),
          CustomTextfield(controller: calculatorController.txtAngka2, label: "input angka 2", 
          labelColor: Colors.green, pass: false,isNumber: true,),
          Row(
            children: [
              CustomButton(myText: "+", myTextColor: Colors.black, onPressed: () {
                calculatorController.tambah();
                
              },),
              CustomButton(myText: "-", myTextColor: Colors.black, onPressed: () {
                
              },)
            ],
          ),
          Row(
            children: [
              CustomButton(myText: "X", myTextColor: Colors.black, onPressed: () {
                
              },),
              CustomButton(myText: "/", myTextColor: Colors.black, onPressed: () {
                
              },)
            ],
          ),
          Obx((){
            return Text("Hasil "+calculatorController.textHasil.value);
          }),
          CustomButton(myText: "Main Menu", myTextColor: Colors.green, 
          onPressed: () {
            Get.toNamed(AppRoutes.FootballPage);
          },)
        ],
      ),
    );
  }
}
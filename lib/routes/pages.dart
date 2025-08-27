import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_football.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages =[
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.FootballPage, page: ()=> FootballPlayer()),
    GetPage(name: AppRoutes.FootballEditPage, page: ()=> EditFootball()),
  ];
}
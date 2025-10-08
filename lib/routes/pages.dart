import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/bindings/calculator_binding.dart';
import 'package:latihan1_11pplg2/bindings/example_binding.dart';
import 'package:latihan1_11pplg2/bindings/login_binding.dart';
import 'package:latihan1_11pplg2/bindings/mainmenu_binding.dart';
import 'package:latihan1_11pplg2/bindings/splash_binding.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_football.dart';
import 'package:latihan1_11pplg2/pages/example_page.dart';
import 'package:latihan1_11pplg2/pages/football_player.dart';
import 'package:latihan1_11pplg2/pages/login_page.dart';
import 'package:latihan1_11pplg2/pages/mainmenu_page.dart';
import 'package:latihan1_11pplg2/pages/splashscreen_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages {
  static final pages =[
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage(), binding: CalculatorBinding()),
    GetPage(name: AppRoutes.FootballPage, page: ()=> FootballPlayer()),
    GetPage(name: AppRoutes.FootballEditPage, page: ()=> EditFootball()),
    GetPage(name: AppRoutes.MainMenuPage, page: ()=> MainmenuPage(), binding: MainmenuBinding()),
    // tambahin 2 bawah ini
    GetPage(name: AppRoutes.SplashPage, page: ()=> SplashscreenPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.LoginPage, page: ()=> LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.ExamplePage, page: ()=> ExamplePage(), binding: ExampleBinding()),
  ];
}
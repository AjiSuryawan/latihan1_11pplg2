import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit(); 
    checklogin();
  }

  checklogin() async{
    
    final prefs = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    if(prefs.getString("username") != null){
      Get.offAllNamed(AppRoutes.MainMenuPage);
    }else{
      Get.offAllNamed(AppRoutes.LoginPage);
    }
  }

}
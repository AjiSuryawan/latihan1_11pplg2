import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/splashscreen_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SplashscreenController>(()=>SplashscreenController());
  }

}
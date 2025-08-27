import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';

class EditFootballController extends GetxController{

  late int index;
  late FootballPlayerController footballPlayerController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    index = Get.arguments as int;
    print("selected index edit "+index.toString());
    footballPlayerController = Get.find<FootballPlayerController>();
    print("selected player name "+footballPlayerController.players[index]);


  }

}
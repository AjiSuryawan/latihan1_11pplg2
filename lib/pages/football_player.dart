import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController = Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Man. United Players"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(()=>ListView.builder(
          itemCount: footballPlayerController.players.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print("player clicked : "+footballPlayerController.players[index]);
                Get.toNamed(AppRoutes.FootballEditPage ,arguments: index);
              },
              title: Text(footballPlayerController.players[index]),
            );
          },
        )),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Bundles%20Screen/Bundle.dart';
import 'package:get_daily_dimond/Data/Screens/Calculator%20Screen/Calculator.dart';
import 'package:get_daily_dimond/Data/Screens/Emotes%20Screen/Emotes.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Select%20Level.dart';
import 'package:get_daily_dimond/Data/Screens/Parachute%20Screen/Parachute.dart';
import 'package:get_daily_dimond/Data/Screens/Vehicles%20Screen/Vehicles.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Character Screen/Characters.dart';
import '../Weapons Screen/Weapons.dart';

class GetFreeDiamondPage extends StatelessWidget {
  const GetFreeDiamondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Get Free Diamond"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                style:
                    GoogleFonts.beVietnamPro(fontSize: ScreenSize.fSize_20()),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  petContainerWidget(context, "Pets", "Robo", () {
                    Get.to(() => SelectLevelPage());
                  }, "assets/Image/pet/pet_agent_hop.png", 1.1),
                  petContainerWidget(context, "Weapons", "RGS50", () {
                    Get.to(() => WeaponsPage());
                  }, "assets/Image/gun/gun_aug.webp", 1.1),
                ],
              ),
              SizedBox(height: ScreenSize.fSize_10()),
              Text(
                "Character",
                style:
                    GoogleFonts.beVietnamPro(fontSize: ScreenSize.fSize_20()),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              HomeContainerWidget(
                  context,
                  "assets/Image/character_full_1.webp",
                  "Characters",
                  "The most prestigious tech company on the continent.", () {
                Get.to(() => CharacterPage());
              }, 1.0),
              SizedBox(height: ScreenSize.fSize_30()),
              getDiamondWidget(
                  context,
                  "assets/Icons/started vector.png",
                  "Bundles",
                  "The night clown bundles is popular bundles in the game", () {
                Get.to(() => BundlePage());
              }, 1.0),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                "More Function",
                style:
                    GoogleFonts.beVietnamPro(fontSize: ScreenSize.fSize_20()),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  petContainerWidget(context, "Emots", "Applause", () {
                    Get.to(() => EmotesPage());
                  },"assets/Image/emot/n1.webp",1.1),
                  petContainerWidget(context, "Calculator", "Diamond", () {
                    Get.to(() => CalculatorPage());
                  },"assets/Icons/Calculator.png",1.1),
                ],
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  petContainerWidget(context, "Vehicles", "Sport Car", () {
                    Get.to(() => VehiclesPage());
                  },"assets/Image/car/car_ambhiblan.webp",1.1),
                  petContainerWidget(context, "Parachute", "Cobra", () {
                    Get.to(() => ParachutePage());
                  },"assets/Image/para/parachute_1.png",1.1),
                ],
              ),
              SizedBox(height: ScreenSize.fSize_60()),
            ],
          ),
        ),
      ),
    );
  }
}

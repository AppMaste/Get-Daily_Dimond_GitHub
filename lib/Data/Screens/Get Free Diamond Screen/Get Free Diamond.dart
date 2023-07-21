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
                  }, "assets/Images/Pets/Agent.png", 2.5,
                      EdgeInsets.only(bottom: ScreenSize.fSize_15())),
                  petContainerWidget(context, "Weapons", "RGS50", () {
                    Get.to(() => WeaponsPage());
                  },
                      "assets/Images/Gun/AK.png",
                      2.1,
                      EdgeInsets.only(
                          left: ScreenSize.fSize_15(),
                          right: ScreenSize.fSize_15(),
                          bottom: ScreenSize.fSize_25())),
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
                  "assets/Images/Characters/character_1.png",
                  "Characters",
                  "The most prestigious tech company on the continent.", () {
                Get.to(() => CharacterPage());
              }, 2.0),
              SizedBox(height: ScreenSize.fSize_30()),
              getDiamondWidget(
                  context,
                  "assets/Images/Bundles/Breakdancer_bundle.png",
                  "Bundles",
                  "The night clown bundles is popular bundles in the game", () {
                Get.to(() => BundlePage());
              }, 2.1),
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
                  petImageContainerWidget(context, "Emots", "Applause", () {
                    Get.to(() => EmotesPage());
                  },
                      "assets/Images/Emotes/1.png",
                      1.5,
                      EdgeInsets.only(bottom: ScreenSize.fSize_20()),
                      Colors.white),
                  petContainerWidget(context, "Calculator", "Diamond", () {
                    Get.to(() => CalculatorPage());
                  }, "assets/Icons/Calculator.png", 1.0,
                      EdgeInsets.only(bottom: ScreenSize.fSize_55())),
                ],
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  petContainerWidget(context, "Vehicles", "Sport Car", () {
                    Get.to(() => VehiclesPage());
                  }, "assets/Images/vehicles/Ambhiblan.png", 2.1,
                      EdgeInsets.only(bottom: ScreenSize.fSize_45())),
                  petContainerWidget(context, "Parachute", "Cobra", () {
                    Get.to(() => ParachutePage());
                  }, "assets/Image/para/parachute_2.png", 2.1,
                      EdgeInsets.only(bottom: ScreenSize.fSize_45())),
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

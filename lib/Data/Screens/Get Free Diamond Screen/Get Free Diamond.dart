import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetFreeDiamondPage extends StatelessWidget {
  const GetFreeDiamondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Get Free Diamond"),
      body: Stack(
        children: [
          Padding(
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
                        tapController.buttonWidget(context, "/SelectLevelPage", '');
                        // Get.to(() => SelectLevelPage());
                      }, "assets/Images/Pets/Agent.png", 2.5,
                          EdgeInsets.only(bottom: ScreenSize.fSize_15())),
                      petContainerWidget(context, "Weapons", "RGS50", () {
                        tapController.buttonWidget(context, "/WeaponsPage", '');
                        // Get.to(() => WeaponsPage());
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
                    // Get.to(() => CharacterPage());
                    tapController.buttonWidget(context, "/CharacterPage", '');
                  }, 2.0),
                  SizedBox(height: ScreenSize.fSize_30()),
                  getDiamondWidget(
                      context,
                      "assets/Images/Bundles/Breakdancer_bundle.png",
                      "Bundles",
                      "The night clown bundles is popular bundles in the game", () {
                    // Get.to(() => BundlePage());
                    tapController.buttonWidget(context, "/BundlePage", '');
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
                        // Get.to(() => EmotesPage());
                        tapController.buttonWidget(context, "/EmotesPage", '');
                      },
                          "assets/Images/Emotes/1.png",
                          1.5,
                          EdgeInsets.only(bottom: ScreenSize.fSize_20()),
                          Colors.white),
                      petContainerWidget(context, "Calculator", "Diamond", () {
                        // Get.to(() => CalculatorPage());
                        tapController.buttonWidget(context, "/CalculatorPage", '');
                      }, "assets/Icons/Calculator.png", 1.0,
                          EdgeInsets.only(bottom: ScreenSize.fSize_55())),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      petContainerWidget(context, "Vehicles", "Sport Car", () {
                        // Get.to(() => VehiclesPage());
                        tapController.buttonWidget(context, "/VehiclesPage", '');
                      }, "assets/Images/vehicles/Ambhiblan.png", 2.1,
                          EdgeInsets.only(bottom: ScreenSize.fSize_45())),
                      petContainerWidget(context, "Parachute", "Cobra", () {
                        tapController.buttonWidget(context, "/ParachutePage", '');
                        // Get.to(() => ParachutePage());
                      }, "assets/Image/para/parachute_2.png", 2.1,
                          EdgeInsets.only(bottom: ScreenSize.fSize_45())),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_60()),
                ],
              ),
            ),
          ),
          banner.getBN("/GetFreeDiamondPage")
        ],
      ),
    );
  }
}

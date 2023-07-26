import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import '../../Widgets/Mediaqure.dart';

class SelectGameModePage extends StatelessWidget {
  SelectGameModePage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/SelectGameModePage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Select Game Mode"),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: ScreenSize.fSize_20()),
                nativeAd.getNative("listTile","/SelectGameModePage"),
                SizedBox(height: ScreenSize.fSize_20()),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
                  child: ContainerWidget2(context, "BR Rank", () {
                    tapController.buttonWidget(context, "/ClaimYourPetPage", argument);
                    // Get.to(() => ClaimYourPetPage(), arguments: argument);
                  }),
                ),
                SizedBox(height: ScreenSize.fSize_20()),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
                  child: ContainerWidget2(context, "CS Rank", () {
                    tapController.buttonWidget(context, "/ClaimYourPetPage", argument);
                    // Get.to(() => ClaimYourPetPage(), arguments: argument);
                  }),
                ),
                SizedBox(height: ScreenSize.fSize_20()),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
                  child: ContainerWidget2(context, "Casual Modes", () {
                    tapController.buttonWidget(context, "/ClaimYourPetPage", argument);
                    // Get.to(() => ClaimYourPetPage(), arguments: argument);
                  }),
                ),
              ],
            ),
            banner.getBN("/SelectGameModePage")
          ],
        ),
      ),
    );
  }
}

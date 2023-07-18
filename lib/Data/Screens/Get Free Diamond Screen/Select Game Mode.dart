import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Claim%20Your%20Pet.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import '../../Widgets/Mediaqure.dart';

class SelectGameModePage extends StatelessWidget {
  SelectGameModePage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Select Game Mode"),
      body: Column(
        children: [
          SizedBox(height: ScreenSize.fSize_20()),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
            child: ContainerWidget2(context, "BR Rank", () {
              Get.to(() => ClaimYourPetPage(), arguments: argument);
            }),
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
            child: ContainerWidget2(context, "CS Rank", () {
              Get.to(() => ClaimYourPetPage(), arguments: argument);
            }),
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
            child: ContainerWidget2(context, "Casual Modes", () {
              Get.to(() => ClaimYourPetPage(), arguments: argument);
            }),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Select%20Game%20Mode.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import '../../Widgets/Mediaqure.dart';

class SelectYourRankPage extends StatelessWidget {
  SelectYourRankPage({super.key});

  List list = [
    "assets/shape/Master.png",
    "assets/shape/Gold 4.png",
    "assets/shape/Heroic.png",
    "assets/shape/Platinum.png",
    "assets/shape/Diamond.png",
    "assets/shape/Silver.png",
    "assets/shape/Gold.png",
    "assets/shape/Diamond 4.png",
  ];

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Select Your Rank"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.5,
                    mainAxisSpacing: 8.5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => SelectGameModePage(),arguments: argument);
                    },
                    child: Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(ScreenSize.fSize_15()),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: MainColor,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          list[index],
                          scale: 1.2,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: ScreenSize.fSize_60()),
            ],
          ),
        ),
      ),
    );
  }
}

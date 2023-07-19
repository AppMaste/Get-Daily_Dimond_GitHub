import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Diamond%20Tips%20Screen/Get%20Diamond%20Tips%20Detail.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import '../../Widgets/Mediaqure.dart';

class GetDiamondTipsPage extends StatelessWidget {
  GetDiamondTipsPage({super.key});

  List list = [
    "Choose The Correct Landing Point",
    "Get Device",
    "Explore Military Site",
    "Please Pay Attantion to the Safe",
    "Look At the Mini Map",
    "Take Cover",
    "Use the Vehicle Carefully",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Get Diamond Tips"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.fSize_20()),
            const Text("AD"),
            SizedBox(height: ScreenSize.fSize_20()),
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: ScreenSize.fSize_20()),
                    child: ContainerWidget2(context, list[index], () {
                      Get.to(() => GetDiamondTipsDetailPage(),
                          arguments: list[index]);
                    }),
                  );
                },
              ),
            ),
            SizedBox(height: ScreenSize.fSize_60())
          ],
        ),
      ),
    );
  }
}

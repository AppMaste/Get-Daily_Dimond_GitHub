import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Pets.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

class SelectPlayerPage extends StatelessWidget {
  SelectPlayerPage({super.key});

  List list = [
    "Pro Player",
    "Mix Player",
    "Normal Player",
    "Valuable Player",
    "Most Popular Player",
    "Excellent Player",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Select Player"),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                          tapController.buttonWidget(context, "/PetsPage", '');
                          // Get.to(() => PetsPage());
                        }),
                      );
                    },
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_60())
              ],
            ),
          ),
          banner.getBN("/SelectPlayerPage")
        ],
      ),
    );
  }
}

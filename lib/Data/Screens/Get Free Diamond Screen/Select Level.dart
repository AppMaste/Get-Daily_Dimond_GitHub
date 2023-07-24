import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Select%20Player.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class SelectLevelPage extends StatelessWidget {
  SelectLevelPage({super.key});

  List list = [
    "0-25",
    "26-40",
    "41-55",
    "56-65",
    "66-75",
    "76-100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Select Level"),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: ScreenSize.fSize_40()),
              const Text("AD"),
              SizedBox(height: ScreenSize.fSize_40()),
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: ScreenSize.fSize_20(),
                        right: ScreenSize.fSize_20(),
                        top: ScreenSize.fSize_15()),
                    child: GestureDetector(
                      onTap: (){
                        tapController.buttonWidget(context, "/SelectPlayerPage", '');
                        // Get.to(() =>  SelectPlayerPage());
                      },
                      child: Container(
                        height: ScreenSize.fSize_50(),
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: Colors.grey.shade700),
                        child: Center(
                          child: Text(
                            list[index],
                            style: GoogleFonts.beVietnamPro(
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenSize.fSize_15()),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          banner.getBN("/SelectLevelPage")
        ],
      ),
    );
  }
}

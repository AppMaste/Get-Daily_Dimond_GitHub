import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

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
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/SelectLevelPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Select Level"),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_40()),
                  nativeAd.getNative("listTile","/SelectLevelPage"),
                  SizedBox(height: ScreenSize.fSize_40()),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: ScreenSize.fSize_20(),
                            right: ScreenSize.fSize_20(),
                            top: ScreenSize.fSize_15()),
                        child: GestureDetector(
                          onTap: () {
                            tapController.buttonWidget(
                                context, "/SelectPlayerPage", '');
                            // Get.to(() =>  SelectPlayerPage());
                          },
                          child: Container(
                            height: ScreenSize.fSize_55(),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: MainColor),
                              borderRadius:
                                  BorderRadius.circular(ScreenSize.fSize_8()),
                              // borderRadius: const BorderRadius.all(Radius.elliptical(21, 7)),
                              // color: Colors.grey.shade700,
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF36093F),
                                      Color(0xFFE75A55),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                width: 1.5,
                              ),
                            ),
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
                  SizedBox(height: ScreenSize.fSize_60()),
                ],
              ),
            ),
            banner.getBN("/SelectLevelPage")
          ],
        ),
      ),
    );
  }
}

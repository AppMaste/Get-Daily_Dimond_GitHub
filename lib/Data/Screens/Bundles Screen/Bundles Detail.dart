import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../Widgets/Mediaqure.dart';

class BundlesDetailPage extends StatelessWidget {
  BundlesDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/BundlesDetailPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "${argument[0]}"),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: ScreenSize.fSize_20()),
                Center(
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 45,
                    height: ScreenSize.horizontalBlockSize! * 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ScreenSize.fSize_20()),
                      gradient: LinearGradient(colors: MainColor),
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(colors: [
                          Color(0xFF36093F),
                          Color(0xFFE75A55),
                        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          argument[1],
                          scale: 1.8,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_30()),
                Center(
                  child: Text(
                    argument[0].toString().toUpperCase(),
                    style: GoogleFonts.beVietnamPro(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenSize.fSize_20()),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_40()),
                claimContainerWidget(context, "Claim Now", () {
                  toast.show(context);
                }),
                SizedBox(height: ScreenSize.fSize_30()),
              ],
            ),
            banner.getBN("/BundlesDetailPage")
          ],
        ),
      ),
    );
  }
}

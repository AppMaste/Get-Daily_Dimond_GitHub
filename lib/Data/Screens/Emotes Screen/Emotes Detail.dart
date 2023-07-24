import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class EmotesDetailPage extends StatelessWidget {
  EmotesDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "${argument[1]}"),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: Container(
                      width: ScreenSize.horizontalBlockSize! * 45,
                      height: ScreenSize.horizontalBlockSize! * 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ScreenSize.fSize_20()),
                        gradient: LinearGradient(colors: MainColor),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            argument[0],
                            scale: 1.8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  Center(
                    child: Text(
                      argument[1].toString().toUpperCase(),
                      style: GoogleFonts.beVietnamPro(
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenSize.fSize_20()),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  claimContainerWidget(context, "Claim Now", () {}),
                ],
              ),
            ),
          ),
          banner.getBN("/EmotesDetailPage")
        ],
      ),
    );
  }
}

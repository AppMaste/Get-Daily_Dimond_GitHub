import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ParachuteDetailPage extends StatelessWidget {
  ParachuteDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "${argument[0]}"),
      body: Column(
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
                  fontWeight: FontWeight.w600, fontSize: ScreenSize.fSize_20()),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_30()),
          claimContainerWidget(context, "Claim Now", () {})
        ],
      ),
    );
  }
}

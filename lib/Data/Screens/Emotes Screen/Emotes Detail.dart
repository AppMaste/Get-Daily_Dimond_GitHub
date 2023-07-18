import 'package:flutter/material.dart';
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
      appBar: appBar(context, "$argument"),
      body: SingleChildScrollView(
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
                  child: const Center(
                    child: Text("Image"),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_30()),
              Center(
                child: Text(
                  argument.toString().toUpperCase(),
                  style: GoogleFonts.beVietnamPro(
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenSize.fSize_20()),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_30()),
              claimContainerWidget(context, "Claim Now", () {}),
              SizedBox(height: ScreenSize.fSize_30()),
              Text(
                "$argument Emote Details :",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_30()),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: GoogleFonts.beVietnamPro(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

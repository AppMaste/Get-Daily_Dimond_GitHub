import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class CharacterDetailPage extends StatelessWidget {
  CharacterDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Characters Detail"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
              SizedBox(height: ScreenSize.fSize_20()),
              Center(
                child: Text(
                  argument.toString().toUpperCase(),
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              claimContainerWidget(context, 'Claim Now', () {}),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                "$argument Character Information :",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_60()),
            ],
          ),
        ),
      ),
    );
  }
}

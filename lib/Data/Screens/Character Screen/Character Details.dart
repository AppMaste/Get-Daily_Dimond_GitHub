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
    print("argument ${argument}");
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(argument[1]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Center(
                child: Text(
                  argument[0].toString().toUpperCase(),
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              claimContainerWidget(context, 'Claim Now', () {}),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                argument[2] == " 			Special ability: !!!"
                    ? "Data Not Available"
                    : argument[2].toString().split("\u0009\u0009\u0009")[2],
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                "${argument[0]} Character Information :",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Text(
                argument[2] == " 			Special ability: !!!"
                    ? "Data Not Available"
                    : argument[2].toString().split("\u0009\u0009\u0009")[3],
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

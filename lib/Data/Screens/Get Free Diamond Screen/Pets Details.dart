import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Free%20Diamond%20Screen/Select%20Rank.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PetsDetailsPage extends StatelessWidget {
  PetsDetailsPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Pets Details"),
      body: Stack(
        children: [
          Padding(
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
                      "${argument[0].toString().toUpperCase()} PET",
                      style: GoogleFonts.beVietnamPro(
                          fontSize: ScreenSize.fSize_20(),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  claimContainerWidget(context, "Claim Now", () {
                    tapController.buttonWidget(
                      context,
                      "/SelectYourRankPage",
                      argument,
                    );
                    // Get.to(() => SelectYourRankPage(), arguments: argument);
                  }),
                  SizedBox(height: ScreenSize.fSize_60()),
                  Text(
                    "${argument[0]} Pet Information :",
                    style: GoogleFonts.beVietnamPro(),
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Text(
                    argument[2],
                    style: GoogleFonts.beVietnamPro(),
                  ),
                  SizedBox(height: ScreenSize.fSize_60()),
                ],
              ),
            ),
          ),
          banner.getBN("/PetsDetailsPage")
        ],
      ),
    );
  }
}

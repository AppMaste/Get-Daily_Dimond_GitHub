import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WeaponsDetailPage extends StatelessWidget {
  WeaponsDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Weapons Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              mainContainerWidget(
                context,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Image",
                      style: GoogleFonts.beVietnamPro(
                          fontSize: ScreenSize.fSize_28()),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              Center(
                child: Text(
                  "$argument",
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              claimContainerWidget(context, "title", () {}),
              SizedBox(height: ScreenSize.fSize_40()),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              const Center(child: Text("AD")),
              SizedBox(height: ScreenSize.fSize_40()),
              Text(
                "Robot Pet Information :",
                style: GoogleFonts.beVietnamPro(),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
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

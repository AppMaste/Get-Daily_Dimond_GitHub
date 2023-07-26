import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WeaponsDetailPage extends StatelessWidget {
  WeaponsDetailPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    // print("dtaatatatta ${argument}");
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/WeaponsDetailPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Weapons Details"),
        body: Stack(
          children: [
            SingleChildScrollView(
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
                          child: Image.asset(
                            argument[1],
                            // style: GoogleFonts.beVietnamPro(
                            //     fontSize: ScreenSize.fSize_28()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    Center(
                      child: Text(
                        "${argument[0]}",
                        style: GoogleFonts.beVietnamPro(
                            fontSize: ScreenSize.fSize_20(),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_40()),
                    claimContainerWidget(context, "Apply", () {
                      toast.show(context);
                    }),
                    SizedBox(height: ScreenSize.fSize_30()),
                    argument[2] == "assets/shape/No Data.png"
                        ? Center(
                            child: Image.asset(
                            argument[2],
                            scale: 2.5,
                            color: Colors.red,
                          ))
                        : Image.asset(
                            argument[2],
                          ),
                    SizedBox(height: ScreenSize.fSize_60()),
                  ],
                ),
              ),
            ),
            banner.getBN("/WeaponsDetailPage")
          ],
        ),
      ),
    );
  }
}

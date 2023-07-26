import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class ClaimYourPetPage extends StatelessWidget {
  ClaimYourPetPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/ClaimYourPetPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, 'Claim Your Pet'),
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Text(
                    argument[0].toString().toUpperCase(),
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_24(),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  Container(
                    width: ScreenSize.horizontalBlockSize! * 45,
                    height: ScreenSize.horizontalBlockSize! * 45,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(ScreenSize.fSize_20()),
                      gradient: LinearGradient(colors: MainColor),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(argument[1]),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_50()),
                  claimContainerWidget(context, 'Apply Now', () {
                    toast.show(context);
                  }),
                  SizedBox(height: ScreenSize.fSize_40()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      argument[2],
                      style:
                          GoogleFonts.beVietnamPro(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            banner.getBN("/ClaimYourPetPage")
          ],
        ),
      ),
    );
  }
}

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class ClaimYourPetPage extends StatelessWidget {
  ClaimYourPetPage({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, 'Claim Your Pet'),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.fSize_20()),
            Text(
              argument[0].toString().toUpperCase(),
              style: GoogleFonts.beVietnamPro(
                  fontSize: ScreenSize.fSize_24(), fontWeight: FontWeight.w600),
            ),
            SizedBox(height: ScreenSize.fSize_30()),
            Container(
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
            SizedBox(height: ScreenSize.fSize_50()),
            claimContainerWidget(context, 'Apply Now', () {
              CherryToast(
                      icon: Icons.alarm_add,
                      displayCloseButton: false,
                      displayIcon: false,
                      themeColor: Colors.transparent,
                      toastPosition: Position.bottom,
                      title: Text(
                        "After 24 Hours This Character Will Be Added in Your Collection",
                        style: GoogleFonts.beVietnamPro(color: Colors.black),
                      ),
                      displayTitle: false,
                      description: Text(
                        "After 24 Hours This Character Will Be Added in Your Collection",
                        style: GoogleFonts.beVietnamPro(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8()),
                      ),
                      toastDuration: const Duration(seconds: 5),
                      // toastPosition: POSITION.BOTTOM,
                      animationDuration: const Duration(milliseconds: 1000),
                      autoDismiss: true)
                  .show(context);
            }),
            SizedBox(height: ScreenSize.fSize_40()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                argument[2],
                style: GoogleFonts.beVietnamPro(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}

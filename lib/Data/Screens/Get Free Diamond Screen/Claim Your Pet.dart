import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
              argument.toString().toUpperCase(),
              style: GoogleFonts.beVietnamPro(
                  fontSize: ScreenSize.fSize_24(), fontWeight: FontWeight.w600),
            ),
            SizedBox(height: ScreenSize.fSize_20()),
            Container(
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
            SizedBox(height: ScreenSize.fSize_20()),
            claimContainerWidget(context, 'Apply Now', () {
              /*   Fluttertoast.showToast(
                  msg: "After 24 Hours This Character Will Be Added in Your Collection",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  fontSize: 16.0
              );*/

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
                           fontSize: ScreenSize.fSize_8()
                        ),
                      ),
                      toastDuration: const Duration(seconds: 5),
                      // toastPosition: POSITION.BOTTOM,
                      animationDuration: const Duration(milliseconds: 1000),
                      autoDismiss: true)
                  .show(context);
            })
          ],
        ),
      ),
    );
  }
}

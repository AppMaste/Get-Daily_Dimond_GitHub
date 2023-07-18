// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class BasicCalculatorPage extends StatelessWidget {
  BasicCalculatorPage({super.key});

  var numberOfDiamondController = TextEditingController().obs;

  var load = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, 'Basic Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: ScreenSize.fSize_30()),
            Padding(
              padding: EdgeInsets.only(),
              child: Image.asset(
                "assets/Icons/vector img.png",
                scale: 2.5,
              ),
            ),
            SizedBox(height: ScreenSize.fSize_30()),
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF320B3A),
                      Color(0xFFE65A55),
                    ],
                  ),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_15()))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write The Number of Diamonds",
                      hintStyle: GoogleFonts.beVietnamPro(
                        color: const Color(0xFF886161),
                        fontWeight: FontWeight.w600,
                      )),
                  controller: numberOfDiamondController.value,
                  style: GoogleFonts.beVietnamPro(),
                ),
              ),
            ),
            SizedBox(height: ScreenSize.fSize_30()),
            claimContainerWidget(context, "Calculate", () {}),
            SizedBox(height: ScreenSize.fSize_30()),
            Padding(
              padding: const EdgeInsets.all(15),
              child: RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                text: TextSpan(
                  text: 'Buying This Much Diamonds Will Cost :\n',
                  style:
                      GoogleFonts.beVietnamPro(fontSize: ScreenSize.fSize_16()),
                  children: [
                    TextSpan(
                        text: ' 3500',
                        style: GoogleFonts.beVietnamPro(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFB6B72))),
                    TextSpan(
                        text: ' Dollers', style: GoogleFonts.beVietnamPro()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
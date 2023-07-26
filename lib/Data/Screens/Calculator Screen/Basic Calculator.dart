// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class BasicCalculatorPage extends StatelessWidget {
  BasicCalculatorPage({super.key});

  var numberOfDiamondController = TextEditingController().obs;

  var load = false.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/BasicCalculatorPage");
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: appBar(context, 'Basic Calculator'),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_30()),
                    Padding(
                      padding: const EdgeInsets.only(),
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
                          borderRadius: BorderRadius.all(
                              Radius.circular(ScreenSize.fSize_15()))),
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
                          keyboardType: TextInputType.number,
                          controller: numberOfDiamondController.value,
                          style: GoogleFonts.beVietnamPro(),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_30()),
                    claimContainerWidget(context, "Calculate", () {
                      if (numberOfDiamondController.value.text.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please enter a Number of Diamond",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      } else {
                        load.value = true;
                      }
                    }),
                    SizedBox(height: ScreenSize.fSize_30()),
                    load.value == true
                        ? Padding(
                            padding: const EdgeInsets.all(15),
                            child: RichText(
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                text: 'Buying This Much Diamonds Will Cost :\n',
                                style: GoogleFonts.beVietnamPro(
                                    fontSize: ScreenSize.fSize_16()),
                                children: [
                                  TextSpan(
                                      text: ' 3500',
                                      style: GoogleFonts.beVietnamPro(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFFFB6B72))),
                                  TextSpan(
                                      text: ' Dollers',
                                      style: GoogleFonts.beVietnamPro()),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
            banner.getBN("/BasicCalculatorPage")
          ],
        ),
      ),
    );
  }
}

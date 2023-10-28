// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../Services/notification/Notification and data load screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF4E2630),
                  Color(0xFF261425),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/shape/Ellipse 12.png"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ScreenSize.fSize_90(), left: ScreenSize.fSize_25()),
            child: Image.asset(
              "assets/Icons/vector img.png",
              scale: 2.1,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenSize.horizontalBlockSize! * 50),
                Text(
                  "Get Daily",
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_28(), color: Colors.white),
                ),
                GradientText(
                  gradientType: GradientType.linear,
                  gradientDirection: GradientDirection.btt,
                  "DIAMONDS",
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_45(),
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  colors: const [
                    Color(0xFF320B3A),
                    Color(0xFFE65A55),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/shape/Ellipse 11.png"),
            ],
          ),
        ],
      ),
    );
  }
}

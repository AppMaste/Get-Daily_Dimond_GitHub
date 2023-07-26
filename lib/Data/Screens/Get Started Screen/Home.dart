// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../Widgets/Mediaqure.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // height: ScreenSize.horizontalBlockSize! * 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenSize.fSize_16()),
                gradient: LinearGradient(colors: MainColor),
              ),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  GradientText(
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.btt,
                    "EXIT",
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_45(),
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    colors: const [
                      Color(0xFF320B3A),
                      Color(0xFFE65A55),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Text(
                    "Are you sure you want to Exit ?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.horizontalBlockSize! * 8,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.horizontalBlockSize! * 35,
                          // color: Colors.red,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              // begin: Alignment.centerLeft,
                              // end: Alignment.centerRight,
                              colors: [
                                Color(0xFF541B3D),
                                Color(0xFFD35051),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "No",
                              style: GoogleFonts.beVietnamPro(
                                  color: const Color(0xFFCB4D50),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => exit(0),
                        child: Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.horizontalBlockSize! * 35,
                          // color: Colors.red,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF541B3D),
                                Color(0xFFD35051),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Yes",
                              style: GoogleFonts.beVietnamPro(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  final connectionStatus = ConnectivityResult.none.obs;
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  var load = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    print("resulttt $result");
    // setState(() {
    if (result == ConnectivityResult.none) {
      showDialogBox();
      load.value = true;
    } else {
      load.value ? Navigator.pop(context, 'Cancel') : null;
    }
  }

  showDialogBox() => showCupertinoDialog<String>(
    context: context,
    builder: (BuildContext context) =>  CupertinoAlertDialog(
      title: Text('No Connection',style: GoogleFonts.beVietnamPro(fontWeight: FontWeight.w600),),
      content: Text('Please check your internet connectivity',style: GoogleFonts.beVietnamPro(),),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: HomeAppBar(context, "Get Daily Diamonds"),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_12()),
                      child: Image.asset(
                        "assets/Icons/vector img.png",
                        scale: 2.0,
                      ),
                    ),
                    HomeContainerWidget(
                        context,
                        "assets/Icons/Get free diamond.png",
                        "Get Free Diamond",
                        "Free Unlimited Diamonds", () {
                      tapController.buttonWidget(
                          context, "/GetFreeDiamondPage", '');
                      // Get.to(() => const GetFreeDiamondPage());
                    }, 2.1),
                    SizedBox(height: ScreenSize.fSize_20()),
                    HomeContainerWidget(
                        context,
                        "assets/Icons/Get diamond tips.png",
                        "Get Diamond Tips",
                        "Diamond Guide Tips & Tricks", () {
                      // Get.to(() => GetDiamondTipsPage());
                      tapController.buttonWidget(
                          context, "/GetDiamondTipsPage", '');
                    }, 2.1),
                    SizedBox(height: ScreenSize.fSize_20()),
                    HomeContainerWidget(
                        context,
                        "assets/Icons/set wallpaper.png",
                        "Set As Wallpaper",
                        "Home Screen & Lock Screen", () {
                      tapController.buttonWidget(context, "/WallpaperPage", '');
                      // Get.to(() => WallpaperPage());
                    }, 2.1),
                    SizedBox(height: ScreenSize.fSize_60()),
                  ],
                ),
              ),
            ),
            banner.getBN("/HomePage")
          ],
        ),
      ),
    );
  }
}

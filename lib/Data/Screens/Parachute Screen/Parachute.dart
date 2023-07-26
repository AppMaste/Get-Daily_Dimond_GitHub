import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../Widgets/Mediaqure.dart';

class ParachutePage extends StatelessWidget {
  ParachutePage({super.key});

  List list = [
    "Panthera",
    "Cobra",
    "Winerlands",
    "Hip Hop",
    "Santa",
    "Shark Attech",
    "Circus",
    "Beach Party",
    "Dragon Slayor",
    "Panda",
    "Apocalypse",
    "Dragon",
  ];

  List image = [
    "assets/Image/para/parachute_1.png",
    "assets/Image/para/parachute_2.png",
    "assets/Image/para/parachute_3.png",
    "assets/Image/para/parachute_4.png",
    "assets/Image/para/parachute_5.png",
    "assets/Image/para/parachute_6.png",
    "assets/Image/para/parachute_7.png",
    "assets/Image/para/parachute_8.png",
    "assets/Image/para/parachute_9.png",
    "assets/Image/para/parachute_10.png",
    "assets/Image/para/parachute_11.png",
    "assets/Image/para/parachute_12.png",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/ParachutePage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Parachute"),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: ScreenSize.fSize_60(),
                  left: ScreenSize.fSize_8(),
                  right: ScreenSize.fSize_8()),
              child: GridView.builder(
                itemCount: list.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.5,
                  crossAxisSpacing: 8.5,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      tapController.buttonWidget(
                        context,
                        "/ParachuteDetailPage",
                        [
                          list[index],
                          image[index],
                        ],
                      );
                      /*Get.to(
                        () => ParachuteDetailPage(),
                        arguments: [
                          list[index],
                          image[index],
                        ],
                      );*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(ScreenSize.fSize_15()),
                        gradient: LinearGradient(colors: MainColor),
                        // border: Border.all(color: const Color(0xFFE75A55)),
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF36093F),
                                Color(0xFFE75A55),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          width: 1.5,
                        ),
                      ),
                      // color: Colors.grey.shade700,
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(bottom: ScreenSize.fSize_20()),
                              child: Image.asset(
                                image[index],
                                scale: 2.2,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: double.maxFinite,
                                height: ScreenSize.fSize_45(),
                                decoration: BoxDecoration(
                                    color:
                                        const Color(0xFFFFFFFF).withOpacity(0.1),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(
                                            ScreenSize.fSize_13()),
                                        bottomLeft: Radius.circular(
                                            ScreenSize.fSize_13()))),
                                child: Center(
                                    child: Text(
                                  list[index],
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: ScreenSize.fSize_15(),
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            banner.getBN("/ParachutePage")
          ],
        ),
      ),
    );
  }
}

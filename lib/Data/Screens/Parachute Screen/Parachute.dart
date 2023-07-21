import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';
import 'Parachute  Detail.dart';

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
    return Scaffold(
      appBar: appBar(context, "Parachute"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                Get.to(
                  () => ParachuteDetailPage(),
                  arguments: [
                    list[index],
                    image[index],
                  ],
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
                    gradient: LinearGradient(colors: MainColor),
                    border: Border.all(color: const Color(0xFFE75A55))),
                // color: Colors.grey.shade700,
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: ScreenSize.fSize_20()),
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
                              color: const Color(0xFFFFFFFF).withOpacity(0.1),
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(ScreenSize.fSize_13()),
                                  bottomLeft:
                                      Radius.circular(ScreenSize.fSize_13()))),
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
    );
  }
}

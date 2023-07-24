import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';
import 'Bundles Detail.dart';

class BundlePage extends StatelessWidget {
  BundlePage({super.key});

  List list = [
    "Breakdancer",
    "Bunny Warrior",
    "Green Criminal",
    "Hip Hop",
    "Kings Sward",
    "Night Clown",
    "Red Criminal",
    "Sakura",
    "Samurai",
  ];

  List image = [
    "assets/Images/Bundles/Breakdancer_bundle.png",
    "assets/Images/Bundles/Bunny_warrior_bundle.png",
    "assets/Images/Bundles/Green_criminal.png",
    "assets/Images/Bundles/Hip_hop_bundle.png",
    "assets/Images/Bundles/Kings_sward_bundle.png",
    "assets/Images/Bundles/Night_clown_bundle.png",
    "assets/Images/Bundles/red_criminal_bundle.png",
    "assets/Images/Bundles/sakuro_bundle.png",
    "assets/Images/Bundles/samurai_bundle.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Bundles"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: ScreenSize.fSize_70()),
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
                      "/BundlesDetailPage",
                      [
                        list[index],
                        image[index],
                      ],
                    );
                    /*  Get.to(
                      () => BundlesDetailPage(),
                      arguments: [
                        list[index],
                        image[index],
                      ],
                    );*/
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
                        gradient: LinearGradient(colors: MainColor),
                        border: Border.all(color: const Color(0xFFE75A55))),
                    // color: Colors.grey.shade700,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: Image.asset(
                                image[index],
                                scale: 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
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
          banner.getBN("/BundlePage")
        ],
      ),
    );
  }
}

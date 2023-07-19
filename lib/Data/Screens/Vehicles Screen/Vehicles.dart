import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class VehiclesPage extends StatelessWidget {
  VehiclesPage({super.key});

  List list = [
    "Sport Car",
    "Monster Car",
    "Militry Jeep",
    "Motor Cycle",
    "Ambhiblan",
    "Van",
    "Tuk Tuk",
  ];
  List list2 = [
    "Sport car is designed to emphasis handling",
    "The pickup Mcar is very fast and nimble",
    "The Militry jeep that can sit 4 player in free fire",
    "It is the only vehicle that’s load single player only in free fire",
    "The Ambhiblan the only vehicle. that can drive in AMBHIBLAN ..",
    "A vn is a type of road vehicle used for transport VAN easily by the ..",
    "Driving the vehicle will r also make you prone to get detected more....",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Vehicles"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return index.isEven
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Get.to(
                        //       () => CharacterDetailPage(),
                        //   arguments: list[index],
                        // );
                      },
                      child: Container(
                        // height: ScreenSize.fSize_60(),
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            gradient: LinearGradient(colors: MainColor),
                            borderRadius:
                                BorderRadius.circular(ScreenSize.fSize_15())),
                        child: Row(
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Text(
                              "Image",
                              style: GoogleFonts.beVietnamPro(),
                            ),
                            SizedBox(width: ScreenSize.fSize_50()),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: ScreenSize.fSize_20()),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  Text(
                                    list[index],
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.fSize_17()),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 60,
                                    height:
                                        ScreenSize.horizontalBlockSize! * 10,
                                    color: Colors.transparent,
                                    child: Text(
                                      list2[index],
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: ScreenSize.fSize_11()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Get.to(
                        //       () => CharacterDetailPage(),
                        //   arguments: list[index],
                        // );
                      },
                      child: Container(
                        // height: ScreenSize.fSize_60(),
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            gradient: LinearGradient(colors: MainColor),
                            borderRadius:
                                BorderRadius.circular(ScreenSize.fSize_15())),
                        child: Row(
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: ScreenSize.fSize_20()),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  Text(
                                    list[index],
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.fSize_17()),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 60,
                                    height:
                                        ScreenSize.horizontalBlockSize! * 10,
                                    color: Colors.transparent,
                                    child: Text(
                                      list2[index],
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: ScreenSize.fSize_11()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: ScreenSize.fSize_30()),
                            Text(
                              "Image",
                              style: GoogleFonts.beVietnamPro(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Character%20Screen/Character%20Details.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({super.key});

  List list = [
    "Andrew",
    "Hayato",
    "Kelly",
    "Ford",
    "Antonio",
    "Carolina",
  ];
  List list2 = [
    "This is a member of the police in charge of maintaining the security of the place",
    "The less life he has the more aemore with his attacks",
    "Kelly is a high school sprinter, She is also known as Shimada Kotiko",
    "Ford was an ordinary man from the navy",
    "Antonio, the well-known Gangster",
    "Caroline, a girl who grew up in an extremely wealthy family",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Characters"),
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
                        Get.to(
                          () => CharacterDetailPage(),
                          arguments: list[index],
                        );
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
                            Column(
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
                                  height: ScreenSize.horizontalBlockSize! * 10,
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
                          ],
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => CharacterDetailPage(),
                          arguments: list[index],
                        );
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
                            Column(
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
                                  height: ScreenSize.horizontalBlockSize! * 10,
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

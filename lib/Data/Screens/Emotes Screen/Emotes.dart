import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Screens/Emotes%20Screen/Emotes%20Detail.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class EmotesPage extends StatelessWidget {
  EmotesPage({super.key});

  List name = [
    "Push-up",
    "Flowers of love",
    "Let's Go",
    "Selfie",
    "Lol",
    "Provoke",
    "Baby Shark",
    "",
    "Shake With Me",
    "",
    "",
    "Threaten",
    "",
    "Chicken",
    "Hello",
    "",
    "",
    "Mummy Dance",
    "Battel Dance",
    "Pro Football",
    "Captain Booyah",
    "Make it Rain",
    "I'm Saitama",
    "Tea Time",
    "Doggie",
    "FFWC Throne",
    "Eat My Dust",
    "",
    "Top DJ",
    "Pirate's Flag",
    "FFWC Throne",
    "Shake It up",
    "I'm Rich",
    "I Heart You",
    "Obliteration",
    "Dangerous Game",
  ];
  List image = [
    "assets/Images/Emotes/2.png",
    "assets/Images/Emotes/3.png",
    "assets/Images/Emotes/6.png",
    "assets/Images/Emotes/7.png",
    "assets/Images/Emotes/8.png",
    "assets/Images/Emotes/9.png",
    "assets/Images/Emotes/10.png",
    "assets/Images/Emotes/11.png",
    "assets/Images/Emotes/12.png",
    "assets/Images/Emotes/13.png",
    "assets/Images/Emotes/14.png",
    "assets/Images/Emotes/15.png",
    "assets/Images/Emotes/16.png",
    "assets/Images/Emotes/17.png",
    "assets/Images/Emotes/1.png",
    "assets/Images/Emotes/18.png",
    "assets/Images/Emotes/19.png",
    "assets/Images/Emotes/20.png",
    "assets/Images/Emotes/21.png",
    "assets/Images/Emotes/22.png",
    "assets/Images/Emotes/23.png",
    "assets/Images/Emotes/24.png",
    "assets/Images/Emotes/25.png",
    "assets/Images/Emotes/26.png",
    "assets/Images/Emotes/27.png",
    "assets/Images/Emotes/28.png",
    "assets/Images/Emotes/29.png",
    "assets/Images/Emotes/31.png",
    "assets/Images/Emotes/32.png",
    "assets/Images/Emotes/33.png",
    "assets/Images/Emotes/34.png",
    "assets/Images/Emotes/35.png",
    "assets/Images/Emotes/36.png",
    "assets/Images/Emotes/37.png",
    "assets/Images/Emotes/38.png",
    "assets/Images/Emotes/39.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Emotes"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: ScreenSize.fSize_60()),
            child: GridView.builder(
              itemCount: image.length,
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
                      "/EmotesDetailPage",
                      [
                        image[index],
                        name[index],
                      ],
                    );
                    /*Get.to(
                      () => EmotesDetailPage(),
                      arguments: [
                        image[index],
                        name[index],
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
                            Image.asset(
                              image[index],
                              scale: 2.2,
                              color: Colors.white,
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
                                name[index],
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
          banner.getBN('/EmotesPage')
        ],
      ),
    );
  }
}

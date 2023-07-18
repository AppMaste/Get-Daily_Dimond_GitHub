import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Home.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              mainContainerWidget(
                context,
                const Center(child: Text("Ad")),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const HomePage());
                },
                child: mainContainerWidget(
                    context,
                    Padding(
                      padding: EdgeInsets.only(
                          top: ScreenSize.fSize_20(),
                          bottom: ScreenSize.fSize_20(),
                          left: ScreenSize.fSize_20()),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's get Started",
                                style: GoogleFonts.beVietnamPro(
                                    fontSize: ScreenSize.fSize_18()),
                              ),
                              SizedBox(height: ScreenSize.fSize_15()),
                              Text(
                                "Reedem your diamonds and enjoy it!",
                                style: GoogleFonts.beVietnamPro(),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: ScreenSize.fSize_12()),
                            child: CircleAvatar(
                              radius: ScreenSize.fSize_30(),
                              child: Image.asset(
                                  "assets/Icons/started vector.png"),
                              // backgroundImage:
                              //     AssetImage("assets/Icons/started vector.png"),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(height: ScreenSize.fSize_20()),
              ContainerWidget(
                  context, "Rate Us", "assets/Icons/Rate.png", () {}),
              SizedBox(height: ScreenSize.fSize_20()),
              ContainerWidget(
                  context, "Share App", "assets/Icons/share.png", () {}),
              SizedBox(height: ScreenSize.fSize_20()),
              ContainerWidget(
                  context, "Privacy Policy", "assets/Icons/privacy.png", () {}),
            ],
          ),
        ),
      ),
    );
  }
}

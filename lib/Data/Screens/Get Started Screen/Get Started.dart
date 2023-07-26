import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Home.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Container(
                      child: nativeAd.getNative("listTileMedium","/GetStartedPage"),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    GestureDetector(
                      onTap: () {
                        // tapController.buttonWidget(context, "/HomePage", "");
                        Get.offAll(() => const HomePage());
                      },
                      child: mainContainerWidget(
                          context,
                          Padding(
                            padding: EdgeInsets.only(
                                top: ScreenSize.fSize_20(),
                                bottom: ScreenSize.fSize_20(),
                                left: ScreenSize.fSize_15()),
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
                    ContainerWidget(context, "Rate Us", "assets/Icons/Rate.png",
                        () async {
                      const url = 'https://www.google.com/';
                      if (await canLaunch(url)) {
                        await launch(url, forceWebView: true, enableJavaScript: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
                    SizedBox(height: ScreenSize.fSize_20()),
                    ContainerWidget(context, "Share App", "assets/Icons/share.png",
                        () {
                      Share.share(
                          "https://www.google.com/search?q=share+app+in+flutter&oq=share+app+in+flutter&aqs=chrome.0.0i512j0i22i30l4j0i390i650j69i60j69i61.3054j0j7&sourceid=chrome&ie=UTF-8");
                    }),
                    SizedBox(height: ScreenSize.fSize_20()),
                    ContainerWidget(
                        context, "Privacy Policy", "assets/Icons/privacy.png", () {
                      // Get.to(() => PrivacyWebView());
                      tapController.buttonWidget(context, "/PrivacyWebView", '');
                    }),
                    SizedBox(height: ScreenSize.fSize_50()),
                  ],
                ),
              ),
            ),
            banner.getBN("/GetStartedPage")
          ],
        ),
      ),
    );
  }
}

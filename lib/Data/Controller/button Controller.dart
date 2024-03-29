// ignore_for_file: invalid_use_of_protected_member
import 'package:facebook_audience_network/ad/ad_interstitial.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

TapController tapController = Get.put(TapController());
BackController backController = Get.put(BackController());

class TapController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx tapcounter = 1.obs;

  buttonWidget(BuildContext context, String page, var aa) async {
    if (getfirebase.value["Counter"] == tapcounter.value) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Center(
              child: AlertDialog(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                // backgroundColor: colorFromHex("#FFABA9"),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        )),
                    Text(
                      "Ad is loading...",
                      style: GoogleFonts.beVietnamPro(
                          color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
      if (getfirebase.value[page]["Interstitial_Type"] == 'admob') {
        InterstitialAd.load(
          adUnitId: getfirebase.value[page]["Interstitial"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
            tapcounter.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: getfirebase.value[page]["Interstitial"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
                tapcounter.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
                tapcounter.value = 1;
              }),
            );
          }),
        );
      }

      if (getfirebase.value[page]["Interstitial_Type"] == 'fb') {
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: getfirebase.value["Interstitial_Facebook"],
          // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
          listener: (result, value) {
            if (result == InterstitialAdResult.LOADED) {
              FacebookInterstitialAd.showInterstitialAd;
              Navigator.pop(context);
              page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
              tapcounter.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
              tapcounter.value = 1;
            }
          },
        );
      }
      if (getfirebase.value[page]["Interstitial_Type"] == "Image_Link") {
        _launchURL(getfirebase.value["Link"]);
        Future.delayed(
          const Duration(seconds: 2),
              () {
            Navigator.pop(context);
            page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
            tapcounter.value = 1;
          },
        );
      }
    } else {
      // Get.to(() => const FirstPage());
      page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
      tapcounter.value++;
      // controller.incrementClickCount(context, 'FirstPage');
    }
  }
}

class BackController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx backcounter = 1.obs;

  backbuttonWidget(BuildContext context, String name) async {
    if (getfirebase.value["Back_Couner"] == backcounter.value) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Center(
              child: AlertDialog(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                // backgroundColor: colorFromHex("#FFABA9"),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        )),
                    Text(
                      "Ad is loading...",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
      if (getfirebase.value[name]["Back_Interstitial"] == 'admob') {
        InterstitialAd.load(
          adUnitId: getfirebase.value[name]["Interstitial"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            Navigator.pop(context);
            // page != 'stop' ? Navigator.pop(context) : null;
            backcounter.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: getfirebase.value[name]["Interstitial"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                Navigator.pop(context);
                // page != 'stop' ? Navigator.pop(context) : null;
                backcounter.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                Navigator.pop(context);
                // page != 'stop' ? Navigator.pop(context) : null;
                backcounter.value = 1;
              }),
            );
          }),
        );
      }
      if (getfirebase.value[name]["Back_Interstitial"] == 'fb') {
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: getfirebase.value[name]["Interstitial_Facebook"],
          // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
          listener: (result, value) {
            if (result == InterstitialAdResult.LOADED) {
              FacebookInterstitialAd.showInterstitialAd;
              Navigator.pop(context);
              Navigator.pop(context);
              // page != 'stop' ? Navigator.pop(context) : null;
              backcounter.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              Navigator.pop(context);
              // page != 'stop' ? Navigator.pop(context) : null;
              backcounter.value = 1;
            }
          },
        );
      }
      if (getfirebase.value[name]["Back_Interstitial"] == "Image_Link") {
        _launchURL(getfirebase.value["Link"]);
        Future.delayed(
          const Duration(seconds: 2),
              () {
            Navigator.pop(context);
            Navigator.pop(context);
            // page != 'stop' ? Navigator.pop(context) : null;
            backcounter.value = 1;
          },
        );
      }
    } else {
      // Get.to(() => const FirstPage());
      Navigator.pop(context);
      // page != 'stop' ? Navigator.pop(context) : null;
      backcounter.value++;
      // controller.incrementClickCount(context, 'FirstPage');
    }
  }
}
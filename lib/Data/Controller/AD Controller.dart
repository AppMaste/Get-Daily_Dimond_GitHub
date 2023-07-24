// ignore_for_file: invalid_use_of_protected_member

import 'package:facebook_audience_network/ad/ad_banner.dart';
import 'package:facebook_audience_network/ad/ad_native.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

final native = Get.put(NativeAD());
final banner = Get.put(BannerAD());

class NativeAD extends GetxController  {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget getNative(String factoryId) {
    NativeAd? nativeAd;
    var isLoaded = false.obs;
    if (getfirebase.value[Get.currentRoute]["Native_Type"] == "admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: getfirebase.value[Get.currentRoute]["Native"],
        // adUnitId: "/6499/example/native",
        listener: NativeAdListener(onAdLoaded: (ad) {
          nativeAd!.load();
          isLoaded.value = true;
          // print("Native ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          // print("Native ad Failed to Load");
        }),
        // factoryId: wantSmallNativeAd ? "listTile" : "listTileMedium",
        factoryId: factoryId,
      );
      nativeAd.load();
    }
    return getfirebase.value[Get.currentRoute]["Native_Type"] == "admob"
        ? Obx(() => (isLoaded.value)
            ? factoryId == "listTile"
                ? Stack(
                    children: [
                      Container(
                        height: ScreenSize.fSize_160(),
                        width: ScreenSize.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Container(
                        height: ScreenSize.fSize_250(),
                        width: ScreenSize.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
            : factoryId == "listTile"
                ? Container(
                    height: ScreenSize.fSize_150(),
                    width: ScreenSize.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    height: ScreenSize.fSize_250(),
                    width: ScreenSize.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ))
        : getfirebase.value[Get.currentRoute]["Native_Type"] == "fb"
            ? Container(
                height: factoryId == "listTile"
                    ? ScreenSize.fSize_150()
                    : ScreenSize.fSize_250(),
                width: ScreenSize.fSize_350(),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 25.0,
                    )
                  ],
                ),
                child: FacebookNativeAd(
                  // placementId: "YOUR_PLACEMENT_ID",
                  placementId: getfirebase.value["N_F_B_A"],
                  // placementId:
                  //     "IMG_16_9_APP_INSTALL#2312433698835503_2964953543583512",
                  adType: NativeAdType.NATIVE_AD,
                  height: factoryId == "listTile"
                      ? ScreenSize.fSize_150()
                      : ScreenSize.fSize_250(),
                  width: ScreenSize.fSize_350(),
                  backgroundColor: Colors.white,
                  titleColor: Colors.black,
                  descriptionColor: Colors.grey,
                  buttonTitleColor: Colors.black,
                  buttonColor: Colors.red,
                  buttonBorderColor: Colors.blue,
                  listener: (result, value) {
                    // print("Native Banner Ad: $result --> $value");
                  },
                ),
              )
            : getfirebase.value[Get.currentRoute]["Native_Type"] == "null"
                ? Container()
                : GestureDetector(
                    onTap: () {
                      _launchURL(getfirebase.value[Get.currentRoute]["Link"]);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: factoryId == "listTile"
                              ? ScreenSize.fSize_150()
                              : ScreenSize.fSize_250(),
                          width: ScreenSize.fSize_350(),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(getfirebase
                                      .value[Get.currentRoute]["Image_Link"]))),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScreenSize.fSize_2()))),
                            height: ScreenSize.fSize_16(),
                            width: ScreenSize.fSize_34(),
                            child: Center(
                                child: Text(
                              "Ad",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenSize.fSize_10()),
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}

class BannerAD extends GetxController {
  late BannerAd bannerAd;
  int a = 1;

  // var bannerLoaded = false.obs;

  Widget getBN(String page) {
    if (getfirebase.value["Banner_Type"] == "admob") {
      bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: getfirebase.value["Banner"],
        // adUnitId: "ca-app-pub-3940256099942544/6300978111",
        listener: BannerAdListener(
            onAdLoaded: (ad) {
              // print("Banner ad Loaded${a++}");
            },
            onAdFailedToLoad: (ad, error) {}),
        request: const AdRequest(),
      );
      bannerAd.load();
    }

    return getfirebase.value["Banner_Type"] == "admob"
        ? Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              // color: Colors.redAccent,
              height: 50,
              child: AdWidget(
                ad: bannerAd,
              ),
            ),
          )
        : Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              // color: Colors.black12,
              height: 50,
              child: FacebookBannerAd(
                  // placementId: "YOUR_PLACEMENT_ID",
                  placementId: getfirebase.value["Banner_Facebook"],
                  bannerSize: BannerSize.STANDARD,
                  listener: (result, value) {
                    // print("Banner Ad: $result -->  $value");
                  }),
            ),
          );
  }
}

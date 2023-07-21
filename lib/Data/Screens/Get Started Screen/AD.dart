import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdPage extends StatefulWidget {
  const AdPage({super.key});

  @override
  State<AdPage> createState() => _AdPageState();
}

class _AdPageState extends State<AdPage> {
  NativeAd? nativeAd;
  bool isNativeAdLoaded = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    loadNativeAd();
  }

  void loadNativeAd() {
    nativeAd = NativeAd(
      adUnitId: "ca-app-pub-3940256099942544/2247696110",
      factoryId: "listTileMedium",
      listener: NativeAdListener(onAdLoaded: (ad) {
        setState(() {
          isNativeAdLoaded = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        // loadNativeAd2();
        nativeAd!.dispose();
      }),
      request: const AdRequest(),
    );
    nativeAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "AD"),
      body: isNativeAdLoaded
          ? Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 265,
              child: AdWidget(
                ad: nativeAd!,
              ),
            )
          : SizedBox(),
    );
  }
}

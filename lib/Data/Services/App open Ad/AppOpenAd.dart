// ignore_for_file: invalid_use_of_protected_member

import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../main.dart';

class AppOpenAdManager {
  AppOpenAd? _appOpenAd;
  static bool isLoaded = false;

  /// Load an AppOpenAd.
  void loadAd() {
    AppOpenAd.load(
      adUnitId: getfirebase.value["Appopen"],
      orientation: AppOpenAd.orientationPortrait,
      request: const AdManagerAdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          // print("Ad Loaded.................................");
          _appOpenAd = ad;
          _appOpenAd!.show();
          isLoaded = true;
        },
        onAdFailedToLoad: (error) {
          // print("Ad Loaded.................................");
          // Handle the error.
        },
      ),
    );
  }

  // Whether an ad is available to be shown.
  bool get isAdAvailable {
    return _appOpenAd != null;
  }
}
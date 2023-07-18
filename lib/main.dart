// ignore_for_file: invalid_use_of_protected_member

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Get%20Started.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Logo.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

final FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.instance;
RxMap getfirebase = {}.obs;

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    "Hello", "Get Daily Diamond", "How are you!!",
    importance: Importance.high, playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebasemessgingBackgroundMessagingHandler(
    RemoteMessage message) async {
  await Firebase.initializeApp();
  // print("A bg message just showed up : ${message.messageId}");
}

Future initConfig() async {
  await firebaseRemoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await firebaseRemoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAdd;

appopenAd() {
  AppOpenAd.load(
    adUnitId: getfirebase.value["Appopen"],
    // adUnitId: "/6499/example/app-open",
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        // print("Ad Loaded.................................");
        appOpenAdd = ad;
        // isLoaded=true;
        ad.show();
      },
      onAdFailedToLoad: (error) {
        // loadAd();
        AppOpenAd.load(
          adUnitId: getfirebase.value["Appopen"],
          orientation: AppOpenAd.orientationPortrait,
          request: const AdManagerAdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              // print("Ad Loaded.................................");
              appOpenAdd = ad;
              // isLoaded=true;
              ad.show();
            },
            onAdFailedToLoad: (error) {
              // loadAd();
              // Handle the error.
            },
          ),
        );

        // Handle the error.
      },
    ),
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(
      (message) => _firebasemessgingBackgroundMessagingHandler(message));

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  return runApp(GetMaterialApp(
    themeMode: ThemeMode.dark,
    darkTheme: ThemeData.dark(),
    theme: ThemeData(primaryColor: Colors.black,),
    debugShowCheckedModeBanner: false,
    home: LogoScreen(),
  ));
}

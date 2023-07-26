// ignore_for_file: invalid_use_of_protected_member, non_constant_identifier_names

import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Get%20Started.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:google_mobile_ads/google_mobile_ads.dart';


import '../../../main.dart';
import '../App open Ad/AppOpenAd.dart';
import '../notifi_service.dart';

class AppController extends GetxController with WidgetsBindingObserver {
  AppOpenAdManager appOpenAdManager = AppOpenAdManager();
  bool Paused = false;
  var Loaded = false.obs;

  @override
  void onInit() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              // color: Colors.blue,
              playSound: true,
              icon: "@drawable/ic_logo_launch",
            ),
          ),
        );
      }
    });
    super.onInit();

    WidgetsBinding.instance.addObserver(this);
    initConfig().whenComplete(() {});
    getfirebase.value = json.decode(firebaseRemoteConfig.getString("diamond"));
    // update();
    Future.delayed(const Duration(seconds: 1), () {
      AdData();
    });
  }

  AdData() async {
    if (getfirebase.value.isNotEmpty) {
      appopenAd();
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => const GetStartedPage());
      });
    } else {
      getfirebase.value =
          await json.decode(firebaseRemoteConfig.getString("diamond"));
      // update();
      AdData();
      tz.initializeTimeZones();
      NotificationService().showNotification(
        1,
        getfirebase.value["Notification_Title"],
        getfirebase.value["Notification_Body"],
        getfirebase.value["Notification_Time"],
      );
    }
  }

  var adCounter = 1.obs;

  AppOpenAd? _appOpenAd;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      // print("pauseeeee ${Loaded.value}");
      AppOpenAd.loadWithAdManagerAdRequest(
        adUnitId: getfirebase.value["Appopen"],
        // adUnitId: "/6499/example/app-open",
        orientation: AppOpenAd.orientationPortrait,
        adManagerAdRequest: const AdManagerAdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            _appOpenAd = ad;
            Loaded.value = true;
          },
          onAdFailedToLoad: (error) {
            // Handle the error.
            adCounter.value++;
          },
        ),
      );
      Paused = true;
    }
    if (state == AppLifecycleState.resumed) {
      if (adCounter.value == getfirebase.value["Back_Interstitial_Counter"] &&
          Loaded.value == true) {
        adCounter.value = 1;
        // if (Loaded.value == true) {
        _appOpenAd?.show();
        // }
        Paused = false;
      } else {
        adCounter.value++;
      }
    }
  }
}

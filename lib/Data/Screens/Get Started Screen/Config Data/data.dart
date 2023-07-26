// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Started%20Screen/Get%20Started.dart';
import 'package:get_daily_dimond/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../Services/App open Ad/AppOpenAd.dart';

class AppController extends GetxController with WidgetsBindingObserver {
  AppOpenAdManager appOpenAdManager = AppOpenAdManager();

  // ignore: non_constant_identifier_names
  bool Paused = false;

  // ignore: non_constant_identifier_names
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

  // ignore: non_constant_identifier_names
  AdData() async {
    if (getfirebase.value.isNotEmpty) {
      appopenAd();
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => const GetStartedPage());
      });
    } else {
      // initConfig().whenComplete(() {});
      getfirebase.value =
          await json.decode(firebaseRemoteConfig.getString("diamond"));
      // update();
      AdData();
    }
  }

  var backCounter = 1.obs;

  AppOpenAd? _appOpenAd;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
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
            backCounter.value++;
          },
        ),
      );
      Paused = true;
    }
    if (state == AppLifecycleState.resumed) {
      if (backCounter.value == getfirebase.value["Back_Interstitial_Counter"] &&
          Loaded.value == true) {
        backCounter.value = 1;
        // if (Loaded.value == true) {
        _appOpenAd?.show();
        // }
        Paused = false;
      } else {
        backCounter.value++;
      }
    }
  }
}

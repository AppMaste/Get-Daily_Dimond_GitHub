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
import 'Data/Screens/Bundles Screen/Bundle.dart';
import 'Data/Screens/Bundles Screen/Bundles Detail.dart';
import 'Data/Screens/Calculator Screen/Basic Calculator.dart';
import 'Data/Screens/Calculator Screen/Calculator.dart';
import 'Data/Screens/Character Screen/Character Details.dart';
import 'Data/Screens/Character Screen/Characters.dart';
import 'Data/Screens/Emotes Screen/Emotes Detail.dart';
import 'Data/Screens/Emotes Screen/Emotes.dart';
import 'Data/Screens/Get Diamond Tips Screen/Get Diamond Tips Detail.dart';
import 'Data/Screens/Get Diamond Tips Screen/Get Diamond Tips.dart';
import 'Data/Screens/Get Free Diamond Screen/Claim Your Pet.dart';
import 'Data/Screens/Get Free Diamond Screen/Get Free Diamond.dart';
import 'Data/Screens/Get Free Diamond Screen/Pets Details.dart';
import 'Data/Screens/Get Free Diamond Screen/Pets.dart';
import 'Data/Screens/Get Free Diamond Screen/Select Game Mode.dart';
import 'Data/Screens/Get Free Diamond Screen/Select Level.dart';
import 'Data/Screens/Get Free Diamond Screen/Select Player.dart';
import 'Data/Screens/Get Free Diamond Screen/Select Rank.dart';
import 'Data/Screens/Get Started Screen/Home.dart';
import 'Data/Screens/Get Started Screen/Privacy Policy.dart';
import 'Data/Screens/Parachute Screen/Parachute  Detail.dart';
import 'Data/Screens/Parachute Screen/Parachute.dart';
import 'Data/Screens/Vehicles Screen/Vehicles Detail.dart';
import 'Data/Screens/Vehicles Screen/Vehicles.dart';
import 'Data/Screens/Wallpaper Screen/Set Wallpaper.dart';
import 'Data/Screens/Wallpaper Screen/Wallpaper.dart';
import 'Data/Screens/Weapons Screen/Weapons Detail.dart';
import 'Data/Screens/Weapons Screen/Weapons.dart';

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
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => LogoScreen(),
      "/GetStartedPage": (context) => const GetStartedPage(),
      "/HomePage": (context) => const HomePage(),
      "/PrivacyWebView": (context) => const PrivacyWebView(),
      "/GetFreeDiamondPage": (context) => const GetFreeDiamondPage(),
      "/GetDiamondTipsPage": (context) => GetDiamondTipsPage(),
      "/WallpaperPage": (context) => WallpaperPage(),
      "/SelectLevelPage": (context) => SelectLevelPage(),
      "/WeaponsPage": (context) => WeaponsPage(),
      "/CharacterPage": (context) => CharacterPage(),
      "/BundlePage": (context) => BundlePage(),
      "/EmotesPage": (context) => EmotesPage(),
      "/CalculatorPage": (context) => const CalculatorPage(),
      "/VehiclesPage": (context) => VehiclesPage(),
      "/ParachutePage": (context) => ParachutePage(),
      "/SelectPlayerPage": (context) => SelectPlayerPage(),
      "/PetsPage": (context) => PetsPage(),
      "/PetsDetailsPage": (context) => PetsDetailsPage(),
      "/SelectYourRankPage": (context) => SelectYourRankPage(),
      "/SelectGameModePage": (context) => SelectGameModePage(),
      "/ClaimYourPetPage": (context) => ClaimYourPetPage(),
      "/WeaponsDetailPage": (context) => WeaponsDetailPage(),
      "/CharacterDetailPage": (context) => CharacterDetailPage(),
      "/EmotesDetailPage": (context) => EmotesDetailPage(),
      "/BasicCalculatorPage": (context) => BasicCalculatorPage(),
      "/VehiclesDetailPage": (context) => VehiclesDetailPage(),
      "/ParachuteDetailPage": (context) => ParachuteDetailPage(),
      "/GetDiamondTipsDetailPage": (context) => GetDiamondTipsDetailPage(),
      "/SetWallpaperPage": (context) => SetWallpaperPage(),
      "/BundlesDetailPage": (context) => BundlesDetailPage(),
    },
    // home: LogoScreen(),
  ));
}

// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, await_only_futures

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SetWallpaperPage extends StatefulWidget {
  SetWallpaperPage({super.key});

  @override
  State<SetWallpaperPage> createState() => _SetWallpaperPageState();
}

class _SetWallpaperPageState extends State<SetWallpaperPage>
    with SingleTickerProviderStateMixin {
  var argument = Get.arguments;
  String wallpaperFileHome = 'Unknown';

  var text;

  late final Animation<double> _animation;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Home Screen",
            iconColor: Colors.white,
            bubbleColor: Colors.white38,
            titleStyle:
                GoogleFonts.beVietnamPro(fontSize: 16, color: Colors.white),
            onPress: () async {
              _animationController.reverse();
              setWallpaperFromFileHome(argument[1]);
            },
            icon: Icons.wallpaper,
          ),
          Bubble(
            title: "Lock Screen Wallpaper",
            iconColor: Colors.white,
            bubbleColor: Colors.white38,
            titleStyle:
                GoogleFonts.beVietnamPro(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
              setWallpaperFromFileLock(argument[1]);
            },
            icon: Icons.wallpaper,
          ),
        ],
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconColor: Colors.white,
        iconData: Icons.more_vert,
        backGroundColor: Colors.white38,
      ),
      backgroundColor: Colors.black,
      appBar: appBar(context, "Set Wallpaper"),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(argument[0]), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Future<void> setWallpaperFromFileHome(image) async {
    setState(() {
      wallpaperFileHome = 'Loading';
    });
    String result;
    var file = await DefaultCacheManager().getSingleFile(image);
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = (await AsyncWallpaper.setWallpaperFromFile(
        wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
        filePath: file.path,
      ))
          .toString();
    } on PlatformException {
      result = 'Failed to get wallpaper.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      wallpaperFileHome = result;
    });
  }

  Future<void> setWallpaperFromFileLock(image) async {
    setState(() {
      wallpaperFileHome = 'Loading';
    });
    String result;
    var file = await DefaultCacheManager().getSingleFile(image);
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = (await AsyncWallpaper.setWallpaperFromFile(
        wallpaperLocation: AsyncWallpaper.LOCK_SCREEN,
        filePath: file.path,
      ))
          .toString();
    } on PlatformException {
      result = 'Failed to get wallpaper.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      wallpaperFileHome = result;
    });
  }
}

// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, await_only_futures

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
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
              setwallpaper();
              // int location = WallpaperManager.HOME_SCREEN;
              // var file = await DefaultCacheManager().getFileStream(argument);
              // bool result = await WallpaperManager.setWallpaperFromFile(
              //     file.single.toString(), location);
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
          image:
              DecorationImage(image: AssetImage(argument), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Future<void> setwallpaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(
        "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=");
    String result =
        (await WallpaperManager.setWallpaperFromFile(file.path, location))
            as String;
  }

  Future<void> setwallpaper_forlock() async {
    int location = WallpaperManager.LOCK_SCREEN;
    var file = await DefaultCacheManager().getSingleFile("$argument");

    String result =
        (await WallpaperManager.setWallpaperFromFile(file.path, location))
            as String;
  }
}

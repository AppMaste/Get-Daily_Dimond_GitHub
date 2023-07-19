import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import 'Set Wallpaper.dart';

class WallpaperPage extends StatelessWidget {
  WallpaperPage({super.key});

  List list = [
    "assets/Image/wall1.jpg",
    "assets/Image/wall2.jpg",
    "assets/Image/wall3.jpg",
    "assets/Image/wall4.jpg",
    "assets/Image/wall5.jpg",
    "assets/Image/wall6.jpg",
    "assets/Image/wall7.jpg",
    "assets/Image/wall8.jpg",
    "assets/Image/wall9.jpg",
    "assets/Image/wall10.jpg",
    "assets/Image/wall11.jpg",
    "assets/Image/wall12.jpg",
    "assets/Image/wall13.jpg",
    "assets/Image/wall14.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Wallpaper"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10.5, crossAxisSpacing: 8.5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => SetWallpaperPage(), arguments: list[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(strokeAlign: 0.9, color: Colors.red),
                  ),
                  child: Image.asset(
                    list[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

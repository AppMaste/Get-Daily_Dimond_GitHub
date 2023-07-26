import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';


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

  List link = [
    "https://i.imgur.com/bOAcmqi.jpg",
    "https://i.imgur.com/1hVSJtO.jpg",
    "https://i.imgur.com/In3FsYn.jpg",
    "https://i.imgur.com/BGIlPsU.jpg",
    "https://i.imgur.com/xaGPr9U.jpg",
    "https://i.imgur.com/vDCjpYF.jpg",
    "https://i.imgur.com/8AOsktb.jpg",
    "https://i.imgur.com/Cj51pP7.jpg",
    "https://i.imgur.com/Su4fIjE.jpg",
    "https://i.imgur.com/hPoRGVB.jpg",
    "https://i.imgur.com/hWswb5k.jpg",
    "https://i.imgur.com/B0AJTJv.jpg",
    "https://i.imgur.com/TLNDVXL.jpg",
    "https://i.imgur.com/dYBpXxo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/WallpaperPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Wallpaper"),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: ScreenSize.fSize_60(),
                  left: ScreenSize.fSize_6(),
                  right: ScreenSize.fSize_6()),
              child: GridView.builder(
                itemCount: list.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.5,
                    crossAxisSpacing: 8.5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      tapController.buttonWidget(
                        context,
                        "/SetWallpaperPage",
                        [
                          list[index],
                          link[index],
                        ],
                      );
                      /*Get.to(() => SetWallpaperPage(), arguments: [
                        list[index],
                        link[index],
                      ]);*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // border: Border.all(strokeAlign: 0.9, color: Colors.red),
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF36093F),
                                  Color(0xFFE75A55),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(ScreenSize.fSize_15())),
                          image: DecorationImage(
                              image: AssetImage(
                                list[index],
                              ),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
              ),
            ),
            banner.getBN("/WallpaperPage")
          ],
        ),
      ),
    );
  }
}

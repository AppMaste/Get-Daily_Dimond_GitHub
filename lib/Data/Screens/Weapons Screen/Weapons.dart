import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Weapons Detail.dart';

class WeaponsPage extends StatelessWidget {
  WeaponsPage({super.key});

  List list = [
    "RGS50",
    "AK47",
    "M79",
    "Gatling",
    "M60",
    "M249",
    "M249",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Weapons"),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: ScreenSize.fSize_20()),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  () => WeaponsDetailPage(),
                  arguments: list[index],
                );
              },
              child: mainContainerWidget(
                context,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(ScreenSize.fSize_50()),
                      child: Text(
                        list[index],
                        style: GoogleFonts.beVietnamPro(
                            fontSize: ScreenSize.fSize_20(),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

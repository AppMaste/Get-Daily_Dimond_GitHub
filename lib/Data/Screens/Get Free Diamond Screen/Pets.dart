import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';
import 'Pets Details.dart';

class PetsPage extends StatelessWidget {
  PetsPage({super.key});

  List list = [
    "Moony",
    "Robo",
    "Agent Hop",
    "Beston",
    "Detective Panda",
    "Dr.Beanie",
    "Dreki",
    "Falco",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Pets"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10.5, crossAxisSpacing: 8.5),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Get.to(() => PetsDetailsPage(),arguments: list[index].toString());
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
                    gradient: LinearGradient(colors: MainColor),
                    border: Border.all(color: const Color(0xFFE75A55))),
                // color: Colors.grey.shade700,
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: ScreenSize.fSize_45(),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF).withOpacity(0.1),
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(ScreenSize.fSize_13()),
                                  bottomLeft:
                                      Radius.circular(ScreenSize.fSize_13()))),
                          child: Center(
                              child: Text(
                            list[index],
                            style: GoogleFonts.beVietnamPro(
                                fontSize: ScreenSize.fSize_15(),
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

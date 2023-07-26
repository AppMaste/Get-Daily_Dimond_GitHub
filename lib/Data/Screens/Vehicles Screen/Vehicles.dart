import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../Widgets/Mediaqure.dart';
import 'Vehicles Detail.dart';

class VehiclesPage extends StatelessWidget {
  VehiclesPage({super.key});

  List list = [
    "Ambhiblan",
    "Military jeep",
    "Monster Car",
    "Motor Cycle",
    "Sport Car",
    "Tuk Tuk",
    "Van",
  ];
  List image = [
    "assets/Images/vehicles/Ambhiblan.png",
    "assets/Images/vehicles/Militry_jeep.png",
    "assets/Images/vehicles/Monster_car.png",
    "assets/Images/vehicles/Motor_cycle.png",
    "assets/Images/vehicles/Sport_car.png",
    "assets/Images/vehicles/Tuk_tuk.png",
    "assets/Images/vehicles/Van.png",
  ];
  List list2 = [
    "\u0009\u0009\u0009If you see this car and need to cross the river, dont even think about it: use this amphibian. Driven by water, this four-wheel bike provides you with all the sporting versatility on two Free Fire maps. \u0009\u0009\u0009As you might expect, it is often found in areas with rivers nearby. If you want to explore on small islands or similar places, don’t worry, because you can return to the main terrain without being exposed by the connecting bridge. Many people are smart, waiting on the other side of the bridge! \u0009\u0009\u0009In addition, since there is room for two people, the best vehicle can move freely in two-person mode!.",
    "\u0009\u0009\u0009This military jeep is one of the most versatile vehicles on the Free Fire map, but it is not very fast. If you are driving on a steep hill, you will notice that it is difficult for the jeep to overcome the slope, in fact, it is common for you to end up downhill. \u0009\u0009\u0009If there are no other options, please drive this vehicle. Jeep can indeed withstand a lot of shooting, especially when you turn your back to the shooter. The rear part of the jeep can free you from multiple difficulties!.",
    "\u0009\u0009\u0009Huge truck is the largest and strongest vehicle. It is difficult to destroy it with gunshots and grenades, but the disadvantage is that the speed is a bit slow. Since this is huge, if you manage to reach the enemy with this car, you can usually eliminate it with a single charge. \u0009\u0009\u0009One thing to remember is that you will almost certainly never find 4x4 at the beginning of the game. Usually, Monster Truck will only appear on a few points on the map after launching from the truck. Pay attention to the sky! It can be eliminated with a single charge.",
    "\u0009\u0009\u0009This motorcycle has a perfect combination of speed and handling, which is why many players like it. However, the disadvantage of this is that it exposes the rider, so if you dont go fast, you can easily become a target \u0009\u0009\u0009The good news is that since the motorcycle is small, you can move faster and pass through narrow places without many problems.",
    "\u0009\u0009\u0009This car has a very obvious advantage over other cars: it is the fastest car in Free Fire. Indeed, it cannot withstand as many blows as other blows, but the maximum speed it reaches attracts all players who like speed. \u0009\u0009\u0009Once you find a car, do not hesitate to drive one of them, especially if you leave the safe zone. If you find this car, you know that you will easily explore the map in just a minute. \u0009\u0009\u0009Curious details: Since the sports car is very fast, if you hit a pedestrian, he will fly away and take extra damage from the fall.",
    "\u0009\u0009\u0009 Tuk Tuk is a slow vehicle, weak and abundant in the area. Dont use it unless you want to move quickly in the same village. Because it is a bit narrow, you can shuttle between houses, so even if it sounds ridiculous, it is useful in chasing. \u0009\u0009\u0009If you want to quickly plunder small villages like Bimasakti Strip, then Tuk Tuk is a good choice.",
    "\u0009\u0009\u0009The VAN is another vehicle that is very abundant on the map. It has a certain resistance, moderate speed, and provides good protection for the driver. If you dont need to return to a safe area immediately, this is a good choice to get from one town to another",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/VehiclesPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Vehicles"),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: ScreenSize.fSize_60(),
                  right: ScreenSize.fSize_8(),
                  left: ScreenSize.fSize_8()),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return index.isEven
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                () => VehiclesDetailPage(),
                                arguments: [
                                  list[index],
                                  image[index],
                                  list2[index],
                                ],
                              );
                            },
                            child: Container(
                              // height: ScreenSize.fSize_60(),
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                gradient: LinearGradient(colors: MainColor),
                                borderRadius:
                                    BorderRadius.circular(ScreenSize.fSize_15()),
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
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: ScreenSize.fSize_8()),
                                    child: Image.asset(
                                      image[index],
                                      scale: 3.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: ScreenSize.fSize_20()),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: ScreenSize.fSize_6()),
                                        Text(
                                          list[index],
                                          style: GoogleFonts.beVietnamPro(
                                              fontSize: ScreenSize.fSize_17()),
                                        ),
                                        SizedBox(height: ScreenSize.fSize_6()),
                                        Container(
                                          width: ScreenSize.horizontalBlockSize! *
                                              60,
                                          color: Colors.transparent,
                                          child: Text(
                                            list2[index]
                                                .toString()
                                                .split("\u0009\u0009\u0009")[1],
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.beVietnamPro(
                                                fontSize: ScreenSize.fSize_11()),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              tapController.buttonWidget(
                                context,
                                "/VehiclesDetailPage",
                                [
                                  list[index],
                                  image[index],
                                  list2[index],
                                ],
                              );
                              /*Get.to(
                                () => VehiclesDetailPage(),
                                arguments: [
                                  list[index],
                                  image[index],
                                  list2[index],
                                ],
                              );*/
                            },
                            child: Container(
                              // height: ScreenSize.fSize_60(),
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                gradient: LinearGradient(colors: MainColor),
                                borderRadius:
                                    BorderRadius.circular(ScreenSize.fSize_15()),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF36093F),
                                    Color(0xFFE75A55),
                                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                  width: 1.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: ScreenSize.fSize_20()),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: ScreenSize.fSize_6()),
                                          Text(
                                            list[index],
                                            style: GoogleFonts.beVietnamPro(
                                                fontSize: ScreenSize.fSize_17()),
                                          ),
                                          SizedBox(height: ScreenSize.fSize_6()),
                                          Container(
                                            width:
                                                ScreenSize.horizontalBlockSize! *
                                                    60,
                                            color: Colors.transparent,
                                            child: Text(
                                              list2[index]
                                                  .toString()
                                                  .split("\u0009\u0009\u0009")[1],
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.beVietnamPro(
                                                  fontSize:
                                                      ScreenSize.fSize_11()),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      image[index],
                                      scale: 3.0,
                                      // style: GoogleFonts.beVietnamPro(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                },
              ),
            ),
            banner.getBN("/VehiclesPage")
          ],
        ),
      ),
    );
  }
}

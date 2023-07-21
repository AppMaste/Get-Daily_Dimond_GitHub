import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Get%20Diamond%20Tips%20Screen/Get%20Diamond%20Tips%20Detail.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import '../../Widgets/Mediaqure.dart';

class GetDiamondTipsPage extends StatelessWidget {
  GetDiamondTipsPage({super.key});

  List list = [
    "Choose The Correct Landing Point",
    "Get Device",
    "Explore Military Site",
    "Please Pay Attantion to the Safe",
    "Look At the Mini Map",
    "Take Cover",
    "Use the Vehicle Carefully",
  ];

  List detail = [
    "\u0009\u0009\u0009Choosing a landing point is only the first step to victory. Although it may seem trivial, it is not. Determining where to start allows you to decide whether to start the game correctly. The important thing is to choose a place that is isolated from other players, very close to the city, but not so close. \u0009\u0009\u0009 So, the best option is to fall from the town, observe where other people fall and enter to explore. It is very important that we dont expose ourselves too much before we dont have the proper equipment, especially when we are everywhere where both quantity and quality are robbed, there will be players in many places.",
    "\u0009\u0009\u0009Once we land, the first thing we need to do is to find weapons, protection, first aid kits, etc. At the beginning of the game, the best way is to grab everything we can find, because we can always improve and replace equipment.",
    "\u0009\u0009\u0009If there is no enemy in sight, it is a good idea to explore attractions such as watch towers, containers, battle es or military tents. In these places, whether it is weapons or supplies, there are usually a lot of loot. \u0009\u0009\u0009It is not very wise to explore these areas from the beginning, but if we do it in the middle of the game, there will always be a lot to do. There will definitely be fewer players lurking to destroy us. \u0009\u0009\u0009In such places, kits are usually found to improve bulletproof vests. Please pay attention when exploring, because although you can wear a first-level vest, it is strongly recommended that you upgrade it as soon as possible. The last player will always have powerful weapons.",
    "\u0009\u0009\u0009The safe area is described by a white circle, which we can see on the map and mini map. In this area, we will be safe, because outside the area, radioactive storms will take our lives over time. \u0009\u0009\u0009If we pay attention to safe areas, we often see players fleeing to escape the storm before it is too late. This situation is an excellent opportunity to eliminate the opponent.",
    "\u0009\u0009\u0009Mini maps are very important to avoid a series of threats to our existence. \u0009\u0009\u0009If you hear gunshots nearby, look for the red triangles on the mini map as they will indicate the origin of the gunshots. In this way, you will know that there are enemies nearby. At other times, we will hear explosions and vehicles driven by players. Both will be marked with yellow or red dots around the mini map. This will tell us which direction the sound comes from. \u0009\u0009\u0009 In addition to radiation, there are hazardous areas. These areas are marked as dangerous with red circles. In a few seconds, a bomber will destroy that place, so please escape as soon as possible! The drone shows the position of the player inside the yellow circle. Dont expose yourself to other people, but look closer to where the players you find are.",
    "\u0009\u0009\u0009There are buildings, walls, containers, stones, trees, etc. everywhere on the map. Use it as a cover! The worst thing we can do in this game has been exposed. When you are traveling, please try to protect the environment so as not to drop the connection when facing observers. \u0009\u0009\u0009However, this means that we must proceed with caution. We will never know whether this wall or the wall behind the building covered the opponent with a bullet gun, ready to kick us out of the game with two assaults.",
    "\u0009\u0009\u0009These vehicles are used to quickly move to other places, where there are a lot of loot, and can also pass the players we found on the road without players. \u0009\u0009\u0009 If we make too much sound, other players will be able to hear us. Therefore, please be careful when using cars, trucks and motorcycles so as not to reveal our location.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Get Diamond Tips"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.fSize_20()),
            const Text("AD"),
            SizedBox(height: ScreenSize.fSize_20()),
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenSize.fSize_10(), right: ScreenSize.fSize_10()),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: ScreenSize.fSize_20()),
                    child: ContainerWidget2(context, list[index], () {
                      Get.to(
                        () => GetDiamondTipsDetailPage(),
                        arguments: [
                          list[index],
                          detail[index],
                        ],
                      );
                    }),
                  );
                },
              ),
            ),
            SizedBox(height: ScreenSize.fSize_60())
          ],
        ),
      ),
    );
  }
}

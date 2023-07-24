import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';
import 'Pets Details.dart';

class PetsPage extends StatelessWidget {
  PetsPage({super.key});

  List list = [
    "Agent",
    "Beaston",
    "Detective Panda",
    "Dr beanie",
    "Dreki",
    "Falco",
    "Fang",
    "Finn",
    "Flash",
    "Hoot",
    "Moony",
    "Mr Waggor",
    "Night Panther",
    "Ottero",
    "Robo",
    "Rockie",
    "Sensai Tig",
    "Shiba",
    "Spprit Fox",
    "Yeti",
    "Zasil",
  ];

  List image = [
    "assets/Images/Pets/Agent.png",
    "assets/Images/Pets/Beaston.png",
    "assets/Images/Pets/Detective_panda.png",
    "assets/Images/Pets/Dr_beanie.png",
    "assets/Images/Pets/Dreki.png",
    "assets/Images/Pets/Falco.png",
    "assets/Images/Pets/Fang.png",
    "assets/Images/Pets/Finn.png",
    "assets/Images/Pets/Flash.png",
    "assets/Images/Pets/Hoot.png",
    "assets/Images/Pets/Moony.png",
    "assets/Images/Pets/Mr_waggor.png",
    "assets/Images/Pets/Night_panther.png",
    "assets/Images/Pets/Ottero.png",
    "assets/Images/Pets/Robo.png",
    "assets/Images/Pets/Rockie.png",
    "assets/Images/Pets/Sensai_tig.png",
    "assets/Images/Pets/Shiba.png",
    "assets/Images/Pets/Spprit_fox.png",
    "assets/Images/Pets/Yeti.png",
    "assets/Images/Pets/Zasil.png",
  ];

  List detail = [
    "When the Safe Zone shrinks, owner gains 30 EP.",
    "Throwing distance of Grenade, Gloo Wall, Flashbang, and Smoke Grenade increase by 10%.",
    "Restores 4 HP upon kill",
    "When in crouch position, movement speed increases by 30%",
    "Owner is able to spot 1 opponent who are using Med Kits within a 10m range, lasts for 3s.",
    "When player has no Gloo Wall grenade, Mr. Waggor can produce Gloo Wall grenade every 120 seconds.",
    "Whenever owner's teammate is knocked down by an enemy, owner will receive 10 EP if HP is full or 5 HP if HP is not full. Does not exceed HP/EP limit. Cooldown: 40s.",
    "When any player is knocked down or eliminated within 20m radius, owner and teammates will receive a 4% movement speed boost. Lasts for 2s. Cooldown: 120s.",
    "Reduces damage (From FF Knife and bullets) taken from behind by 10%, up to 100 durability points. CD: 150s",
    "When using a scanning item or skill, owner can reach an added range of 10m and the scan duration will last for an extra 1s. Results are shared with teammates and no skill cooldown is required.",
    "20% damage reduction when owner is in interaction countdown",
    "When player has no Gloo Wall grenade, Mr. Waggor can produce Gloo Wall grenade every 120 seconds.",
    "Increases 15 inventory space",
    "When player has no Gloo Wall grenade, Mr. Waggor can produce Gloo Wall grenade every 120 seconds.",
    "Adds a shield to the gloo wall, providing additional 60 HP.",
    "Cooldown time of equipped active skill decrease by 6%.",
    "Reduces the duration of enemies' man-marking skills by 30%.",
    "Marks one of the surrounding mushrooms on the map every 180 seconds. The mark lasts for 30 seconds.",
    "Restores extra 4 HP when using a Med Kit",
    "Reduces 15% damage taken from explosives every 150s.",
    "Every time owner consumes an Inhaler/Med Kit/Repair Kit, there's a 25% chance of getting an additional one. CD:120s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Pets"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: ScreenSize.fSize_70(),left: ScreenSize.fSize_8(),right: ScreenSize.fSize_8()),
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
                      "/PetsDetailsPage",
                      [
                        list[index].toString(),
                        image[index],
                        detail[index],
                      ],
                    );
                    /*Get.to(() => PetsDetailsPage(), arguments: [
                      list[index].toString(),
                      image[index],
                      detail[index]
                    ]);*/
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(ScreenSize.fSize_15()),
                        gradient: LinearGradient(colors: MainColor),
                        border: Border.all(color: const Color(0xFFE75A55))),
                    // color: Colors.grey.shade700,
                    child: Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: ScreenSize.fSize_38()),
                            child: Image.asset(
                              image[index],
                              scale: 2.4,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.maxFinite,
                              height: ScreenSize.fSize_45(),
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(
                                          ScreenSize.fSize_13()),
                                      bottomLeft: Radius.circular(
                                          ScreenSize.fSize_13()))),
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
          banner.getBN("/PetsPage")
        ],
      ),
    );
  }
}

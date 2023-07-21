import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Character%20Screen/Character%20Details.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({super.key});

  List list = [
    "Andrew",
    "Antonio",
    "Caroline",
    "Ford",
    "Hayato",
    "Kelly",
    "Kla",
    "Maxim",
    "Miguel",
    "Misha",
    "Moco",
    "Nikita",
    "Olivia",
    "Paloma",
    "Wukong",
  ];
  List list2 = [
    "\u0009\u0009\u0009Special ability: Bulletproof vest is more resistant, so playing with Andrew will take longer to rest. \u0009\u0009\u0009Price: 1000 coins (If you log in from the main menu, Andrew is a free character). \u0009\u0009\u0009Andrew is a former policeman who has spent most of his life chasing criminals in prison. Because of his experience, he became an expert in survival and armed combat. In addition, Andrew is extremely resistant to damage.\n\nIs a useful role for us who seek defense rather than aggressive style.",
    "\u0009\u0009\u0009Special ability: The game has more lives than other characters. \u0009\u0009\u0009 Price: 499 diamonds. \u0009\u0009\u0009Antonio is an orphan, he created his own street gang. He grew up to become the gang boss and got rid of all his opponents in seven years. If someone wants to threaten his family, please prepare him: even if it may be life-threatening, he will do everything he can to protect them.\n\nThis role is the best if we want to take advantage of the first encounter. He increased the initial lifespan, thus showing higher durability at the beginning of the game.",
    "\u0009\u0009\u0009Special ability: It can move faster when holding a carrying bullet gun. \u0009\u0009\u0009Price: 499 diamonds. \u0009\u0009\u0009Caroline is a very, very rich girl. She has been surrounded by fans and many bodyguards all her life. She is very close to her father and brothers and likes to role-play.\n\nIf we choose to fight at close quarters and explore buildings, this young woman will become our best ally, one of the last members of the free shooting army.",
    "\u0009\u0009\u0009Special ability: Compared with other characters, Ford suffers less damage in the radioactive area. \u0009\u0009\u0009Price: 2000 coins or 399 precious stones. \u0009\u0009\u0009SFord is a sailor. The harsh life of the ocean has increased their resistance and survivability. He is the most mysterious character, he doesnt want to reveal his secrets.\n\nThis person is a good choice if we want to land in the most extreme place on the map and explore quietly. Hide in the radioactive area for a short time and surprise our opponents by ambushing, but be careful!.",
    "\u0009\u0009\u0009Special ability: The less life, the stronger his attack power will be. \u0009\u0009\u0009Price: 1999 diamonds (currently only packaging). \u0009\u0009\u0009Shimada Hayato comes from an ancient samurai family. He has a deep sense of honor and proudly carries the blood, tradition and curse of his family. He is willing to do anything to protect his greatest secret, and no matter who the opponent is, he will use the katana.\n\nThis role is very useful for duel lovers. If you try to use a weapon with a large magazine, even if you have the same weapon, a long-distance exchange will eventually cause more damage than your opponent.",
    "\u0009\u0009\u0009Special ability: Kellys sprint speed is faster than usual, which allows us to reach the enemy, rob or escape danger in front of others \u0009\u0009\u0009Price: 2000 coins or 399 diamonds. \u0009\u0009\u0009Kellys real name is Shimada Kiriko. She is a teenager or a student. She is an elite athlete and will not stop training in track and field or academy, so she has become the fastest character in Free Fire.\n\nIf we want to enter the site earlier than others, or have an advantage in chasing on foot, playing Kelly will be the best choice.",
    "\u0009\u0009\u0009Special ability: Carats punches cause the most damage to the entire game, which is crucial for the first few minutes of each game. \u0009\u0009\u0009Price: 8000 coins or 499 diamonds. \u0009\u0009\u0009Kla is a lonely person and an experienced Muay Thai wrestler. He disappeared for many years, until he wanted to reappear, albeit completely changed: he decided to avenge himself with his hands.\n\nFor those who like to land in places full of players, this person is the best; but beware of being surrounded by bullets at the end!.",
    "\u0009\u0009\u0009Special skills: Maxim spends less time healing or eating mushrooms to gain EP points. \u0009\u0009\u0009Price: 8000 coins or 499 diamonds. \u0009\u0009\u0009Maxim is a regular player in the game, eating more, plus a very funny and smiling player. He likes streaming when playing against players from all over the world. But please dont be fooled: if you think you are older than him and will beat him in a food competition, you are wrong.\n\nFor those of us who are based on inventory supplies, Maxim is the most suitable.",
    "\u0009\u0009\u0009Special ability: Every time an enemy is eliminated, Miguel will gain EP points, and other characters can only gain EP points by eating mushrooms. \u0009\u0009\u0009Price: 8000 coins or 499 diamonds. \u0009\u0009\u0009Miguel is a very deadly and welltrained special forces soldier.Throughout his career, together with his comrades in the battalion, he successfully raised justice for terrorists. Until one day, everything went wrong.\n\nSome of us like to be aggressive and hunt down many enemies. This is our character.",
    "\u0009\u0009\u0009Special ability: All vehicles driven by Misha can reach higher speeds and suffer less damage. \u0009\u0009\u0009Price: 8000 coins or 499 diamonds. \u0009\u0009\u0009Misha is a racing expert and a very brave girl. She loves speed and likes to keep all her opponents in the dust. For her, there are no corners, only straights\n\nShe is a suitable role for those who often use vehicles and are speed lovers. hold on!.",
    "\u0009\u0009\u0009Special ability: In a few seconds, let your teammates see where the enemy you are shooting. \u0009\u0009\u0009Price: 499 diamonds. \u0009\u0009\u0009Moco is one of the best hackers and is known as an internet legend. She is skilled and very smart, able to get information from anywhere without leaving a trace-the ghost of the Internet!\n\nIf you like to play with other people, the character is very helpful in the task of ambushing the enemy because of the ability of the enemy to be marked or identified.",
    "\u0009\u0009\u0009Special ability: Nikita can charge the submachine gun faster, which is a real advantage in one-to-one situations. \u0009\u0009\u0009Price: 2500 coins or 499 diamonds. \u0009\u0009\u0009Nikita is the professional bodyguard of Carolyn, the chairman of FreeFire. She learned to use different weapons since she was a child and became the champion of various competitions.\n\nThis is useful for those of us who want to make full use of the shooting rhythm and magazine of the submachine gun but pay attention to the ammunition!.",
    "\u0009\u0009\u0009Special ability: !!!\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009",
    "\u0009\u0009\u0009Special ability: !!!\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009",
    "\u0009\u0009\u0009Special ability: !!!\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009\u0009",
  ];

  List image = [
    "assets/Images/Characters/character_1.png",
    "assets/Images/Characters/character_2.png",
    "assets/Images/Characters/character_3.png",
    "assets/Images/Characters/character_4.png",
    "assets/Images/Characters/character_5.png",
    "assets/Images/Characters/character_6.png",
    "assets/Images/Characters/character_7.png",
    "assets/Images/Characters/character_8.png",
    "assets/Images/Characters/character_9.png",
    "assets/Images/Characters/character_10.png",
    "assets/Images/Characters/character_11.png",
    "assets/Images/Characters/character_12.png",
    "assets/Images/Characters/character_13.png",
    "assets/Images/Characters/character_14.png",
    "assets/Images/Characters/character_15.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Characters"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final detail =
                list2[index].toString().split("\u0009\u0009\u0009")[1];
            // print(
                // "detailllll ${list2[index].toString().split("\u0009\u0009\u0009")[1]}");
            return index.isEven
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => CharacterDetailPage(),
                          arguments: [
                            list[index],
                            image[index],
                            list2[index]
                          ],
                        );
                      },
                      child: Container(
                        // height: ScreenSize.fSize_60(),
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            gradient: LinearGradient(colors: MainColor),
                            borderRadius:
                                BorderRadius.circular(ScreenSize.fSize_15())),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Image.asset(
                              image[index],
                              scale: 2.2,
                              // style: GoogleFonts.beVietnamPro(),
                            ),
                            SizedBox(width: ScreenSize.fSize_10()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: ScreenSize.fSize_6()),
                                Text(
                                  list[index],
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: ScreenSize.fSize_17()),
                                ),
                                SizedBox(height: ScreenSize.fSize_6()),
                                Container(
                                  width: ScreenSize.horizontalBlockSize! * 60,
                                  height: ScreenSize.horizontalBlockSize! * 10,
                                  color: Colors.transparent,
                                  child: Text(
                                    detail,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.horizontalBlockSize! * 2.5),
                                  ),
                                ),
                              ],
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
                        Get.to(
                          () => CharacterDetailPage(),
                          arguments: [
                            list[index],
                            image[index],
                            list2[index]
                          ],
                        );
                      },
                      child: Container(
                        // height: ScreenSize.fSize_60(),
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            gradient: LinearGradient(colors: MainColor),
                            borderRadius:
                                BorderRadius.circular(ScreenSize.fSize_15())),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: ScreenSize.fSize_6()),
                                Text(
                                  list[index],
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: ScreenSize.fSize_17()),
                                ),
                                SizedBox(height: ScreenSize.fSize_6()),
                                Container(
                                  width: ScreenSize.horizontalBlockSize! * 60,
                                  height: ScreenSize.horizontalBlockSize! * 10,
                                  color: Colors.transparent,
                                  child: Text(
                                    detail,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.horizontalBlockSize! * 2.5),
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              image[index],
                              scale: 2.1,
                              // style: GoogleFonts.beVietnamPro(),
                            ),
                            SizedBox(width: ScreenSize.fSize_10())
                          ],
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

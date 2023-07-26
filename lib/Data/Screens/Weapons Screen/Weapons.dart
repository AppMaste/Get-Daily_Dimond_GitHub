import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class WeaponsPage extends StatelessWidget {
  WeaponsPage({super.key});

  List list = [
    "AK47",
    "An94",
    "Aug",
    "CG15",
    "Bat",
    "Dragunov",
    "Famas",
    "Grenade",
    "Gatling",
    "Groza",
    "Katana",
    "M14",
    "M4a1",
    "M79",
    "M60",
    "M249",
    "Mag-7",
    "MGL 140",
    "MP40",
    "MP5",
    "P90",
    "Pan",
    "parang",
    "RGS50",
    "UMP",
    "Scar",
    "VSS",
    "XM8",
  ];
  List image = [
    "assets/Images/Gun/AK.png",
    "assets/Images/Gun/An94.png",
    "assets/Images/Gun/Aug.png",
    "assets/Images/Gun/CG15.png",
    "assets/Images/Gun/Bat.png",
    "assets/Images/Gun/Dragunov.png",
    "assets/Images/Gun/Famas.png",
    "assets/Images/Gun/Grenade.png",
    "assets/Images/Gun/Gatling.png",
    "assets/Images/Gun/Groza.png",
    "assets/Images/Gun/Katana.png",
    "assets/Images/Gun/M14.png",
    "assets/Images/Gun/M4a1.png",
    "assets/Images/Gun/M79.png",
    "assets/Images/Gun/M60.png",
    "assets/Images/Gun/M249.png",
    "assets/Images/Gun/Mag.png",
    "assets/Images/Gun/MGL 140.png",
    "assets/Images/Gun/MP40.png",
    "assets/Images/Gun/MP5.png",
    "assets/Images/Gun/P90.png",
    "assets/Images/Gun/Pan.png",
    "assets/Images/Gun/Parang.png",
    "assets/Images/Gun/RGS50.png",
    "assets/Images/Gun/UMP.png",
    "assets/Images/Gun/Scar.png",
    "assets/Images/Gun/VSS.png",
    "assets/Images/Gun/XM8.png",
  ];
  List detail = [
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/an94_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/cg15_detail.png",
    "assets/Images/Gun Details/bat_detail.png",
    "assets/Images/Gun Details/dragunov_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/grenade_detail.png",
    "assets/Images/Gun Details/gatling_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/katana_detail.png",
    "assets/shape/No Data.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/m79_detail.png",
    "assets/Images/Gun Details/m60_detail.png",
    "assets/Images/Gun Details/m249_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/mgl140_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/mp5_detail.png",
    "assets/Images/Gun Details/p90_detail.png",
    "assets/Images/Gun Details/pan_detail.png",
    "assets/Images/Gun Details/parang_detail.png",
    "assets/Images/Gun Details/rgs50_detail.png",
    "assets/Images/Gun Details/ump_detail.png",
    "assets/shape/No Data.png",
    "assets/Images/Gun Details/vss_detail.png",
    "assets/Images/Gun Details/xm8_detail.png",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/WeaponsPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Weapons"),
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
                  return index.isOdd
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              tapController.buttonWidget(
                                context,
                                "/WeaponsDetailPage",
                                [
                                  list[index],
                                  image[index],
                                  detail[index],
                                ],
                              );
                              /*Get.to(
                                () => WeaponsDetailPage(),
                                arguments: [
                                  list[index],
                                  image[index],
                                  detail[index],
                                ],
                              );*/
                            },
                            child: Container(
                              height: ScreenSize.horizontalBlockSize! * 30,
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  gradient: LinearGradient(colors: MainColor),
                                  borderRadius: BorderRadius.circular(
                                      ScreenSize.fSize_15())),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: ScreenSize.fSize_10()),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      image[index],
                                      scale: 2.0,
                                      // style: GoogleFonts.beVietnamPro(),
                                    ),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_50()),
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  Text(
                                    list[index],
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.fSize_17()),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_6()),
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
                                "/",
                                [
                                  list[index],
                                  image[index],
                                  detail[index],
                                ],
                              );
                              /* Get.to(
                                () => WeaponsDetailPage(),
                                arguments: [
                                  list[index],
                                  image[index],
                                  detail[index],
                                ],
                              );*/
                            },
                            child: Container(
                              height: ScreenSize.horizontalBlockSize! * 30,
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  gradient: LinearGradient(colors: MainColor),
                                  borderRadius: BorderRadius.circular(
                                      ScreenSize.fSize_15())),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: ScreenSize.fSize_10()),
                                  Text(
                                    list[index],
                                    style: GoogleFonts.beVietnamPro(
                                        fontSize: ScreenSize.fSize_17()),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_6()),
                                  SizedBox(width: ScreenSize.fSize_30()),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      image[index],
                                      scale: 1.5,
                                      // style: GoogleFonts.beVietnamPro(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                },
              ),
            ),
            banner.getBN("/WeaponsPage")
          ],
        ),
      ),
    );
  }
}

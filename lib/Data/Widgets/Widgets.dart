// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Mediaqure.dart';

var MainColor = [
  const Color(0xFF1E151C),
  const Color(0xFF2D1D21),
];

///////////////////////////////////////// AppBar //////////////////////////////////////////////////////
HomeAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: GoogleFonts.beVietnamPro(fontWeight: FontWeight.w500),
    ),
  );
}

appBar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Image.asset(
        "assets/Icons/arrowcircleleft.png",
        scale: 2.1,
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.beVietnamPro(
          fontSize: ScreenSize.fSize_20(), fontWeight: FontWeight.w500),
    ),
  );
}

/////////////////////////////////////////Get Started Screen//////////////////////////////////////////////////////
mainContainerWidget(BuildContext context, var child) {
  return Container(
    width: double.maxFinite,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: MainColor),
        borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFF36093F),
              offset: Offset(-4, -5),
              blurRadius: 5,
              blurStyle: BlurStyle.solid,
              spreadRadius: -2),
          BoxShadow(
              color: Color(0xFFE75A55),
              offset: Offset(2, 3),
              blurRadius: 5,
              blurStyle: BlurStyle.solid,
              spreadRadius: -2),
        ]),
    child: child,
  );
}

mainContainerWidget2(BuildContext context, var child) {
  return Container(
    width: double.maxFinite,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: MainColor),
        borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFF36093F),
              offset: Offset(-4, -5),
              blurRadius: 5,
              blurStyle: BlurStyle.solid,
              spreadRadius: -2),
          BoxShadow(
              color: Color(0xFFE75A55),
              offset: Offset(2, 3),
              blurRadius: 5,
              blurStyle: BlurStyle.solid,
              spreadRadius: -2),
        ]),
    child: child,
  );
}

ContainerWidget(BuildContext context, String title, String icon, var ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Stack(
      children: [
        Container(
          width: double.maxFinite,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(
                right: ScreenSize.fSize_20(), left: ScreenSize.fSize_8()),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xFF1E151C),
                borderRadius:
                    BorderRadius.all(Radius.circular(ScreenSize.fSize_15())),
                border: Border.all(color: const Color(0xFF1E151C)),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFF36093F),
                      offset: Offset(0, -5),
                      blurRadius: 5,
                      blurStyle: BlurStyle.solid,
                      spreadRadius: -2),
                  BoxShadow(
                      color: Color(0xFFE75A55),
                      offset: Offset(2, 3),
                      blurRadius: 5,
                      blurStyle: BlurStyle.solid,
                      spreadRadius: -2),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenSize.fSize_20(),
                        left: ScreenSize.fSize_20(),
                        bottom: ScreenSize.fSize_20()),
                    child: Row(
                      children: [
                        Image.asset(
                          icon,
                          scale: 2.2,
                        ),
                        SizedBox(width: ScreenSize.fSize_25()),
                        Text(
                          title,
                          style: GoogleFonts.beVietnamPro(
                              fontSize: ScreenSize.fSize_17()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ScreenSize.horizontalBlockSize! * 80,
              top: ScreenSize.fSize_20()),
          child: Container(
            width: ScreenSize.fSize_70(),
            decoration: BoxDecoration(
              color: const Color(0xFF1E151C),
              borderRadius: BorderRadius.circular(ScreenSize.fSize_20()),
              boxShadow: [
                boxShadow,
                boxShadow2,
              ],
            ),
            child: Center(
              child: Image.asset(
                "assets/Icons/arrowright.png",
                scale: 2.2,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

var boxShadow = const BoxShadow(
    color: Color(0xFF36093F),
    offset: Offset(-4, -2),
    blurRadius: 5,
    blurStyle: BlurStyle.solid,
    spreadRadius: -2);

var boxShadow2 = const BoxShadow(
    color: Color(0xFFE75A55),
    offset: Offset(2, 3),
    blurRadius: 5,
    blurStyle: BlurStyle.solid,
    spreadRadius: -2);

/////////////////////////////////////////Home Screen //////////////////////////////////////////////////////
HomeContainerWidget(BuildContext context, String icon, String title,
    String subtitle, var ontap, var scale) {
  return GestureDetector(
      onTap: ontap,
      child: mainContainerWidget(
        context,
        Row(
          children: [
            SizedBox(width: ScreenSize.fSize_20()),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenSize.fSize_15(), bottom: ScreenSize.fSize_15()),
              child: Image.asset(
                icon,
                scale: scale,
              ),
            ),
            SizedBox(width: ScreenSize.fSize_30()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: ScreenSize.fSize_12()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 55,
                  color: Colors.transparent,
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_11()),
                  ),
                )
              ],
            ),
          ],
        ),
      ));
}

///////////////////////////////////////// Get Free Diamond Screen //////////////////////////////////////////////////////
petContainerWidget(BuildContext context, String title, String title2, var ontap,
    String image, var scale) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: ScreenSize.horizontalBlockSize! * 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenSize.fSize_20()),
          gradient: LinearGradient(colors: MainColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: ScreenSize.fSize_20()),
          Image.asset(image, scale: scale),
          Text(
            title,
            style: GoogleFonts.beVietnamPro(
              fontSize: ScreenSize.fSize_20(),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_15()),
          Text(
            title2,
            style: GoogleFonts.beVietnamPro(),
          ),
          SizedBox(height: ScreenSize.fSize_10()),
        ],
      ),
    ),
  );
}

getDiamondWidget(BuildContext context, String icon, String title,
    String subtitle, var ontap, var scale) {
  return GestureDetector(
      onTap: ontap,
      child: mainContainerWidget(
        context,
        Row(
          children: [
            SizedBox(width: ScreenSize.fSize_30()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.beVietnamPro(
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: ScreenSize.fSize_12()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 60,
                  color: Colors.transparent,
                  child: Text(
                    subtitle,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_11()),
                  ),
                )
              ],
            ),
            SizedBox(width: ScreenSize.fSize_17()),
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenSize.fSize_15(), bottom: ScreenSize.fSize_15()),
              child: Image.asset(
                icon,
                scale: scale,
              ),
            ),
          ],
        ),
      ));
}

///////////////////////////////////////// Select Player Screen //////////////////////////////////////////////////////

ContainerWidget2(BuildContext context, String title, var ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Stack(
      children: [
        Container(
          width: double.maxFinite,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(
                right: ScreenSize.fSize_20(), left: ScreenSize.fSize_8()),
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  // color: const Color(0xFF1E151C),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_15())),
                  border: Border.all(color: const Color(0xFF1E151C)),
                  gradient: LinearGradient(colors: MainColor)
                  /* boxShadow: const [
                  BoxShadow(
                      color: Color(0xFF36093F),
                      offset: Offset(0, -5),
                      blurRadius: 5,
                      blurStyle: BlurStyle.solid,
                      spreadRadius: -2),
                  BoxShadow(
                      color: Color(0xFFE75A55),
                      offset: Offset(2, 3),
                      blurRadius: 5,
                      blurStyle: BlurStyle.solid,
                      spreadRadius: -2),
                ],*/
                  ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenSize.fSize_20(),
                        bottom: ScreenSize.fSize_20()),
                    child: Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_25()),
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 67,
                          color: Colors.transparent,
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.beVietnamPro(
                                fontSize: ScreenSize.fSize_17()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ScreenSize.horizontalBlockSize! * 77,
              top: ScreenSize.fSize_20()),
          child: Container(
            width: ScreenSize.fSize_60(),
            decoration: BoxDecoration(
              color: const Color(0xFF1E151C),
              borderRadius: BorderRadius.circular(ScreenSize.fSize_20()),
              boxShadow: [
                boxShadow,
                boxShadow2,
              ],
            ),
            child: Center(
              child: Image.asset(
                "assets/Icons/arrowright.png",
                scale: 2.2,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

///////////////////////////////////////// Claim Pet Screen //////////////////////////////////////////////////////
claimContainerWidget(BuildContext context, String title, var ontap) {
  return Center(
    child: GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenSize.fSize_50(),
        width: ScreenSize.horizontalBlockSize! * 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF541B3D),
              Color(0xFFD35051),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.beVietnamPro(fontSize: ScreenSize.fSize_15()),
          ),
        ),
      ),
    ),
  );
}

///////////////////////////////////////// Calculator Screen //////////////////////////////////////////////////////
calculatorContainerWidget(
    BuildContext context, String title, String icon, var one, var ontap) {
  return one == 0
      ? GestureDetector(
          onTap: ontap,
          child: mainContainerWidget(
            context,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  icon,
                  scale: 1.5,
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenSize.fSize_20()),
                  child: Text(
                    title,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_20(),
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        )
      : GestureDetector(
          onTap: ontap,
          child: mainContainerWidget2(
            context,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_20()),
                  child: Text(
                    title,
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_20(),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Image.asset(
                  icon,
                  scale: 1.5,
                ),
              ],
            ),
          ));
}

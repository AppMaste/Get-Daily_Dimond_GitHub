// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetDiamondTipsDetailPage extends StatefulWidget {
  GetDiamondTipsDetailPage({super.key});

  @override
  State<GetDiamondTipsDetailPage> createState() =>
      _GetDiamondTipsDetailPageState();
}

class _GetDiamondTipsDetailPageState extends State<GetDiamondTipsDetailPage> {
  var list = [
    "Choose The Correct Landing Point",
    "Get Device",
    "Explore Military Site",
    "Please Pay Attantion to the Safe",
    "Look At the Mini Map",
    "Take Cover",
    "Use the Vehicle Carefully",
  ].obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    removeValue();
  }

  var ddd;

  removeValue() {
    setState(() {
      var remove = list.remove(argument);
      // index = 0;
      data2.value = remove.toString();
      // ddd = list.removeAt(index);
      print("aaaaaaaaaaaaaaaaaa $remove");
    });
  }

  bool abc = false;
  var data = "".obs;
  var data2 = "".obs;
  var count = 0.obs;

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "${count.value == 0 ? argument : data.value}"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              const Center(child: Text("AD")),
              SizedBox(height: ScreenSize.fSize_20()),
              mainContainerWidget(
                context,
                Padding(
                  padding: EdgeInsets.all(ScreenSize.fSize_15()),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                    style: GoogleFonts.beVietnamPro(
                        fontSize: ScreenSize.fSize_16(),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_30()),
              list.value.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return TextButton(
                          onPressed: () {
                            removeValue();
                            count.value = 1;
                            data.value = list.value[index];
                            list.remove(data.value);
                            // list.add(count.value == 0 ? argument : data.value);
                            // print("datatatatatta $data");
                            // removeValue(index);
                            // var bb = list[index];
                          },
                          child: Text(
                            list[index],
                            textAlign: TextAlign.start,
                          ),
                        );
                      },
                    )
                  : TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}

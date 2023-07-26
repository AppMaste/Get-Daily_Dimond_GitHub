import 'package:flutter/material.dart';
import 'package:get_daily_dimond/Data/Controller/AD%20Controller.dart';
import 'package:get_daily_dimond/Data/Controller/button%20Controller.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';

import '../../Widgets/Mediaqure.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/CalculatorPage");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Calculator"),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    nativeAd.getNative("listTileMedium","/CalculatorPage"),
                    SizedBox(height: ScreenSize.fSize_40()),
                    calculatorContainerWidget(context, "Basic Calculator",
                        "assets/Icons/Basic calculator.png", 0, () {
                      tapController.buttonWidget(context, "/BasicCalculatorPage", '');

                      // Get.to(() => BasicCalculatorPage());
                    }),
                    SizedBox(height: ScreenSize.fSize_20()),
                    calculatorContainerWidget(context, "Normal Calculator",
                        "assets/Icons/Normal calculator.png", 1, () {
                      tapController.buttonWidget(context, "/BasicCalculatorPage", '');
                      // Get.to(() => BasicCalculatorPage());
                    }),
                    SizedBox(height: ScreenSize.fSize_20()),
                    calculatorContainerWidget(context, "Advance Calculator",
                        "assets/Icons/Advanced calculator.png", 0, () {
                      // Get.to(() => BasicCalculatorPage());
                      tapController.buttonWidget(context, "/BasicCalculatorPage", '');
                    }),
                  ],
                ),
              ),
            ),
            banner.getBN("/CalculatorPage")
          ],
        ),
      ),
    );
  }
}

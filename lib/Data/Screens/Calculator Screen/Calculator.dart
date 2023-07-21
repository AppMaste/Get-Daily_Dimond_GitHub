import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_daily_dimond/Data/Screens/Calculator%20Screen/Basic%20Calculator.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaqure.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context, "Calculator"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              const Text("AD"),
              SizedBox(height: ScreenSize.fSize_40()),
              calculatorContainerWidget(context, "Basic Calculator",
                  "assets/Icons/Basic calculator.png", 0, () {
                Get.to(() => BasicCalculatorPage());
              }),
              SizedBox(height: ScreenSize.fSize_20()),
              calculatorContainerWidget(context, "Normal Calculator",
                  "assets/Icons/Normal calculator.png", 1, () {
                Get.to(() => BasicCalculatorPage());
              }),
              SizedBox(height: ScreenSize.fSize_20()),
              calculatorContainerWidget(context, "Advance Calculator",
                  "assets/Icons/Advanced calculator.png", 0, () {
                Get.to(() => BasicCalculatorPage());
              }),
            ],
          ),
        ),
      ),
    );
  }
}

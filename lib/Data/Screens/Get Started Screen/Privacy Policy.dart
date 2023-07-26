import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get_daily_dimond/Data/Widgets/Mediaqure.dart';
import 'package:get_daily_dimond/Data/Widgets/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/button Controller.dart';

class PrivacyWebView extends StatefulWidget {
  const PrivacyWebView({super.key});

  @override
  State<PrivacyWebView> createState() => _PrivacyWebViewState();
}

class _PrivacyWebViewState extends State<PrivacyWebView> {
  double _progress = 0;

  late InAppWebViewController webview;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/PrivacyWebView");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar(context, "Privacy"),
        body: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse("https://pub.dev/")),
              onWebViewCreated: (InAppWebViewController controller) {
                webview = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
            _progress < 1
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.fSize_40(),
                          child: CircularProgressIndicator(
                            strokeWidth: ScreenSize.horizontalBlockSize! * 1.4,
                            value: _progress,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize.fSize_20(),
                        ),
                        Text(
                          "Loading...",
                          style: GoogleFonts.beVietnamPro(
                              fontSize: ScreenSize.fSize_20()),
                        )
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

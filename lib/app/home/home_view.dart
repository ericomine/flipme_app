import 'package:flipme_app/app/home/widgets/wealth_summary_card.dart';
import 'package:flipme_app/app/shared/extensions/context_x.dart';
import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: "assets/designs/wealth_summary.png",
      scale: 1072.0 / 480.0,
      child: Scaffold(
        body: SizedBox.expand(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            color: context.themeData.backgroundColor,
            child: Center(
              child: WealthSummaryCard(),
            ),
          ),
        ),
      ),
    );
  }
}

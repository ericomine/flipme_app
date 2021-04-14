import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../shared/extensions/context_x.dart';
import 'see_more_button.dart';
import 'wealth_card.dart';

class WealthHistoryCard extends StatelessWidget {
  final double cardHeight;
  final void Function()? onTapSeeMore;

  const WealthHistoryCard(
      {Key? key, required this.cardHeight, this.onTapSeeMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WealthCard(
      content: Container(
        height: cardHeight,
        child: Column(
          children: [
            ListTile(
              title: Text("Seu histórico", style: context.textTheme.headline6),
              contentPadding: const EdgeInsets.all(0),
            ),
            Expanded(child: WealthHistoryChart()),
            Divider(height: 10, thickness: 0.5),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SeeMoreButton(onTapSeeMore: onTapSeeMore)],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class WealthHistoryChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        titlesData: FlTitlesData(leftTitles: SideTitles(showTitles: false)),
        borderData: FlBorderData(show: false),
        maxY: 2000,
        barGroups: [
          BarChartGroupData(x: 1, barRods: [BarChartRodData(y: 1000)]),
          BarChartGroupData(x: 2, barRods: [BarChartRodData(y: 1200)]),
          BarChartGroupData(x: 3, barRods: [BarChartRodData(y: 1400)]),
          BarChartGroupData(x: 4, barRods: [BarChartRodData(y: 1600)]),
          BarChartGroupData(x: 5, barRods: [BarChartRodData(y: 1800)]),
        ],
      ),
    );
  }
}

class SeriesItem {
  final DateTime x;
  final double y;

  SeriesItem(this.x, this.y);
}

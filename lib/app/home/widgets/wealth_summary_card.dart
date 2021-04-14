import 'package:flutter/material.dart';

import '../../shared/extensions/context_x.dart';
import 'see_more_button.dart';
import 'wealth_card.dart';

class WealthSummaryCard extends StatelessWidget {
  final double cardHeight;
  final void Function(double) setCardHeight;
  final String total;
  final String profitability;
  final String cdi;
  final String gain;
  final void Function()? onTapThreeDots;
  final void Function()? onTapSeeMore;

  WealthSummaryCard({
    Key? key,
    required this.cardHeight,
    required this.setCardHeight,
    this.total = "N/A",
    this.profitability = "N/A",
    this.cdi = "N/A",
    this.gain = "N/A",
    this.onTapThreeDots,
    this.onTapSeeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WealthCard(
      content: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return Builder(builder: (context) {
      if (cardHeight == 0.0) {
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          setCardHeight(context.size?.height ?? 0.0);
        });
      }

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("Seu resumo", style: context.textTheme.headline6),
            contentPadding: const EdgeInsets.all(0),
            trailing: Container(
              width: 20,
              child: IconButton(
                icon: Icon(Icons.more_vert, size: 16),
                onPressed: onTapThreeDots,
              ),
            ),
          ),
          SizedBox(height: 12),
          Column(
            children: [
              Text("Valor investido", style: context.textTheme.bodyText2),
              SizedBox(height: 5),
              Text(
                total,
                style: context.textTheme.headline6!.copyWith(fontSize: 15.5),
              ),
            ],
          ),
          SizedBox(height: 21),
          Column(
            children: [
              IndicatorRow(name: "Rentabilidade/mês", value: profitability),
              IndicatorRow(name: "CDI", value: cdi),
              IndicatorRow(name: "Ganho/mês", value: gain),
            ],
          ),
          SizedBox(height: 8),
          Divider(height: 10, thickness: 0.5),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SeeMoreButton(onTapSeeMore: onTapSeeMore)],
          ),
          SizedBox(height: 8),
        ],
      );
    });
  }
}

class IndicatorRow extends StatelessWidget {
  final String name;
  final String value;

  const IndicatorRow({Key? key, this.name = "", this.value = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 6,
            child: Text("$name"),
          ),
          Expanded(
            flex: 4,
            child: Text(
              "$value",
              style: context.textTheme.bodyText1,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

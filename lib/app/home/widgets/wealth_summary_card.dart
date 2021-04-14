import 'package:flipme_app/app/shared/extensions/context_x.dart';
import 'package:flutter/material.dart';

class WealthSummaryCard extends StatelessWidget {
  final String total;
  final String profitability;
  final String cdi;
  final String gain;
  final void Function()? onTapThreeDots;
  final void Function()? onTapSeeMore;

  const WealthSummaryCard({
    Key? key,
    this.total = "R\$ 3.200.876,00",
    this.profitability = "2,767%",
    this.cdi = "3,45%",
    this.gain = "R\$1833,23",
    this.onTapThreeDots,
    this.onTapSeeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(10),
      elevation: 2,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("Seu resumo", style: context.textTheme.headline6),
              contentPadding: const EdgeInsets.all(0),
              trailing: Container(
                width: 10,
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
        ),
      ),
    );
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

class SeeMoreButton extends StatelessWidget {
  final void Function()? onTapSeeMore;

  const SeeMoreButton({Key? key, required this.onTapSeeMore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSeeMore,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: context.themeData.primaryColor,
            ),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Text("VER MAIS",
            style: context.textTheme.bodyText2!.copyWith(
                color: context.themeData.primaryColor,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}

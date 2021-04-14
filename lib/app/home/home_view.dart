import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../shared/extensions/context_x.dart';
import 'home_store.dart';
import 'widgets/wealth_summary_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final store = HomeStore();

  @override
  void initState() {
    super.initState();
    store.loadWealthSummary();
  }

  @override
  Widget build(BuildContext context) {
    if (store.locale.isEmpty) {
      final locale = Localizations.localeOf(context).toString();
      store.setLocale(locale);
    }

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          color: context.themeData.backgroundColor,
          child: Center(
            child: FutureBuilder(
              future: store.loadWealthSummary(),
              builder: (_, AsyncSnapshot<bool?> snapshot) {
                if (snapshot.hasData && snapshot.data!) {
                  return Observer(
                    builder: (_) {
                      return WealthSummaryCard(
                        total: store.totalWealthString,
                        profitability: store.profitabilityString,
                        cdi: store.cdiString,
                        gain: store.gainString,
                      );
                    },
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}

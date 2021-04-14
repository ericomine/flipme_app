import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../data/graphql/fliper_graphql_client.dart';
import 'home/home_view.dart';
import 'theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => FliperGraphQLClient()),
      ],
      child: MaterialApp(
        title: 'Fliper Demo',
        theme: buildFliperTheme(),
        home: HomeView(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('pt', 'BR'),
        ],
      ),
    );
  }
}

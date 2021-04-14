import 'package:flipme_app/app/home/home_view.dart';
import 'package:flipme_app/app/theme.dart';
import 'package:flipme_app/data/graphql/fliper_graphql_client.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      ),
    );
  }
}

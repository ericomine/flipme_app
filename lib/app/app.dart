import 'package:flipme_app/app/home/home_view.dart';
import 'package:flipme_app/app/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fliper Demo',
      theme: fliperTheme,
      home: HomeView(),
    );
  }
}

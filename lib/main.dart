import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setWindowSize(Size(270, 480));
  runApp(App());
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle().copyWith(
    statusBarColor: Colors.transparent,
  ));

  runApp(App());
}

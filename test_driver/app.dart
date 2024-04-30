import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:martechplace/main.dart';

void main() async {
  enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
  ));
}

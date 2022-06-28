import 'package:algoriza_task_1/routing/app_routing.dart';
import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Algoriza 1st Task',
      initialRoute: kSplashScreen,
      onGenerateRoute: AppRouting().onGenerateRoute,
    );
  }
}

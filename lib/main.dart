import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'res/constants.dart';
import 'view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Mixapplications - Islam Darwish",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, fontFamily: 'OpenSans')
              .copyWith(
                bodyLarge: const TextStyle(color: bodyTextColor),
                bodyMedium: const TextStyle(color: bodyTextColor),
              ),
        ),
        home: const SplashView());
  }
}

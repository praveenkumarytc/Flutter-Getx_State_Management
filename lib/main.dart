import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_localization/languages.dart';
import 'package:getx/getx_routes/screen_one.dart';
import 'package:getx/getx_routes/screen_two.dart';
import 'package:getx/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      debugShowCheckedModeBanner: false,
      // this were you will give your local, like if its hindi, urdu, spanish
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Builder(builder: (context) {
        return const HomeScreen();
      }),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screen1', page: () => const ScreenOne(name: '')),
        GetPage(name: '/screen2', page: () => const ScreenTwo()),
      ],
    );
  }
}

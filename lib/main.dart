import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/pages/home/home_screen.dart';
import 'package:weatherapp/utils/Binding/home_binding.dart';

void main() {
  runApp( const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}

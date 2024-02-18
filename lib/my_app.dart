import 'package:flutter/material.dart';
import 'package:journal/const/app_color.dart';
import 'package:journal/const/app_const.dart';
import 'package:journal/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConst.appName,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColor.white,
          backgroundColor: AppColor.primary,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primary,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

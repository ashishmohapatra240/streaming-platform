import 'package:flutter/material.dart';
import 'package:streaming_platform/screens/on_boarding_screen.dart';
import 'package:streaming_platform/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backgroundColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: primaryColor, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        iconTheme: const IconThemeData(color: primaryColor),
      ),
      home: const OnboardingScreen(),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
      },
    );
  }
}

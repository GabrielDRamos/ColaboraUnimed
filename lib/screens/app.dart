import 'package:flutter/material.dart';
import 'package:secondapptest/colors.dart';
import 'package:secondapptest/screens/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kUnimedTheme,
      debugShowCheckedModeBanner: false,
      home: const Login(title: "ColaboraUnimed"),
    );
  }
}

final ThemeData kUnimedTheme = buildUnimedTheme();

ThemeData buildUnimedTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kUnimedGreen50,
      onPrimary: kUnimedGreen500,
      secondary: kUnimedGray,
    ),
  );
}

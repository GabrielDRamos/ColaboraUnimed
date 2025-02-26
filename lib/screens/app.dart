import 'package:flutter/material.dart';
import 'package:secondapptest/colors.dart';
import 'package:secondapptest/screens/cartao_vacina.dart';
import 'package:secondapptest/screens/exames_periodicos.dart';
import 'package:secondapptest/screens/login.dart';
import 'package:secondapptest/screens/meus_dados.dart';
import 'package:secondapptest/screens/my_home_page.dart';
import 'package:secondapptest/screens/perfil.dart';
import 'package:secondapptest/screens/questionarios.dart';

import 'checkin.dart';
import 'historico.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kUnimedTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes:{
        "/login": (context) => Login(title: 'ColaboraUnimed',),
        "/home": (context) => MyHomePage(title: 'ColaboraUnimed'),
      "/checkin": (context) => Checkin(title: 'ColaboraUnimed',),
      "/historico": (context) => Historico(title: 'ColaboraUnimed',),
      "/perfil": (context) => Perfil(),
        "/periodicos": (context) => ExamesPeriodicos(),
        "/meusdados": (context) => MeusDados(),
        "/cartaovacina": (context) => CartaoVacina(),
        "/questionarios": (context) => Questionarios()
      }
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

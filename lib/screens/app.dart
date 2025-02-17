import 'package:flutter/material.dart';
import 'package:secondapptest/screens/historico.dart';
import 'package:secondapptest/screens/login.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Noto' ,
        
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Historico(title: "ColaboraUnimed"),
      
    );
  }
}

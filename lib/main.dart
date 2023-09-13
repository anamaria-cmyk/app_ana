import 'package:app_ana/widgets/alerta.dart';
import 'package:app_ana/screen/home.dart';
import 'package:app_ana/screen/screen2.dart';
import 'package:app_ana/screen/screen3.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ana App',
      initialRoute: 'home_screen',
      routes: {
        'home_screen'  : ( _ ) =>  const HomeSreen(),
        'screen_2'     : ( _ ) =>  const Screen2(),
        'alerta'       : ( _ ) =>  const Alerta(),
        'screen_3'     : ( _ ) =>  const Screen3(),
      }
    );
  }
}
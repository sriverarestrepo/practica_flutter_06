import 'package:flutter/material.dart';
import 'package:prefs_usuario_practica/src/pages/home_page.dart';
import 'package:prefs_usuario_practica/src/pages/settings_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias de Usuario App',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName      : (BuildContext context ) => HomePage(),
        SettingsPage.routeName  : (BuildContext context ) => SettingsPage(),
      },
    );
  }
}
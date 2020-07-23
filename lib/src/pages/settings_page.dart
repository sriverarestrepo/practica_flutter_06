import 'package:flutter/material.dart';
import 'package:prefs_usuario_practica/src/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {

  static final String routeName = 'settings';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('Ajustes'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Ajustes page'),
      ),
    );
  }

  
}
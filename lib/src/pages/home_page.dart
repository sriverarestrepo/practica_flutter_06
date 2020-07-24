import 'package:flutter/material.dart';
import 'package:prefs_usuario_practica/src/share_prefs/preferencias_usuario.dart';
import 'package:prefs_usuario_practica/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  final prefs = new PreferenciasUsuario();


  @override
  Widget build(BuildContext context) {
    
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Preferencias de Usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.orange :Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundario: ${prefs.colorSecundario?"Activado":"Desactivado"}'),
          Divider(),
          Text('Género: ${prefs.genero==1?"Masculino":"Femenino"}'),
          Divider(),
          Text('Nombre usuario: ${prefs.nombre}'),
          Divider(),
        ],
      ),
    );
  }


  
}
import 'package:flutter/material.dart';
import 'package:prefs_usuario_practica/src/share_prefs/preferencias_usuario.dart';
import 'package:prefs_usuario_practica/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  final PreferenciasUsuario prefs = new PreferenciasUsuario();

  bool    _colorSecundario;
  int     _genero;
  String  _nombre;

  TextEditingController _textEditingController;

  @override
  void initState() { 
    super.initState();
    
    prefs.ultimaPagina = SettingsPage.routeName;
    _genero           = prefs.genero;
    _colorSecundario  = prefs.colorSecundario;
    
    _textEditingController = new TextEditingController(text: prefs.nombre);
  }


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text('Ajustes'),
        centerTitle: true,
        backgroundColor: (prefs.colorSecundario) ? Colors.orange :Colors.indigo,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario, 
            title: Text('Color Secundario'),
            onChanged: (value){
              setState(() {
                _colorSecundario = value;
                prefs.colorSecundario = value;
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el teléfono',
              ),
              onChanged: _setTxtNombre,
            ),
          )
        ],
      )
    );
  }

  void _setSelectedRadio(int value) {
    setState(() { 
      prefs.genero = value;
      _genero = value;
    });
  }


  void _setTxtNombre(String value) {
    setState(() {
      _nombre = value;
      prefs.nombre = value;
     });
  }


}
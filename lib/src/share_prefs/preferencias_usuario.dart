import 'package:prefs_usuario_practica/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario.internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario.internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }
  //Ninguna de estas propiedades se usa
  //bool    _colorSecundario;
  //int     _genero;
  //String  _nombre;

  //GETTERS AND SETTERS

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value){
    _prefs.setInt('genero', value);
  }

  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value){
    _prefs.setBool('colorSecundario', value);
  }

  get nombre {
    return _prefs.getString('nombre') ?? '';
  }

  set nombre (String value){
    _prefs.setString('nombre', value);
  }

  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? HomePage.routeName;
  }

  set ultimaPagina (String value){
    _prefs.setString('ultimaPagina', value);
  }

}
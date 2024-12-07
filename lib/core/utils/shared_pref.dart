
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

static setbool(String key,bool value){
  _instance.setBool(key, value);

}
static getbool(String key){
  return _instance.getBool(key)??false;
}
}



//! Map key:value ==> "UserOpendApp":false

import 'package:shared_preferences/shared_preferences.dart';

class ConstantSharedPreferences{
static SharedPreferences? sharedPreferences;

  Future initSharedPreferences(name) async{
    sharedPreferences  = await SharedPreferences.getInstance();

    sharedPreferences?.setString('name', name);

  }

//  setName(name){
//   sharedPreferences?.setString('action', 'pia');
//   print(sharedPreferences?.getString('action'));
//
// }

  getName(){
     // SharedPreferences.getInstance();
    return sharedPreferences?.getString('name') ?? "";
     // return sharedPreferences?.getString('name');

  }
}
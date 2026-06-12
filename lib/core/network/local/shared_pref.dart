import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {

}


class SharedPrefImpl implements LocalStorageService {
  final SharedPreferences prefs;

  SharedPrefImpl(this.prefs);


}
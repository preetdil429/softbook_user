import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesTest {
  final String login = "login";

  saveRegisteredValue(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('registeredValue', value);
  }

  setNotificationsCount(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('notifications', value);
  }
  Future<int> getNotificationsCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('notifications') ?? 0;
  }

  setAuthCode(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('authToken', value);
  }

  Future<String> getAuthCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('authToken') ?? '';
  }

  Future<bool> getRegisteredValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('registeredValue') ?? false;
  }

  saveToggleValue(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('toggleValue', value);
  }

  Future<bool> getToggleValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('toggleValue') ?? false;
  }

  Future<String> saveToken(String type, {String? value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (type == "set") {
      prefs.setString('token', value!);
      return "Set";
    } else {
      String? userentity = prefs.getString('token');
      return userentity!;
    }
  }

  // saveUserData(User userdata) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('userdata', json.encode(userdata.toJson()));
  // }

  Future<String?> getUserdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('userdata');
  }
}

/*
  Future<String> saveuserdata(String type, {Data userdata}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (type == "set") {
      prefs.setString('userdata', json.encode(userdata.toJson()));
      return "Set";
    } else {
      String userentity = prefs.getString('userdata');
      return userentity;
    }
  }
*/
Future<String> appVersion(String value, String appversion) async {
  String a = "Test";
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (value == "0") {
    prefs.setString("AppVersion", appversion);
    return a;
  } else if (value == "1") {
    String? tok = prefs.getString("AppVersion");
    if (tok == null || tok == "")
      return tok = "1";
    else
      return tok;
  } else {
    prefs.setString("AppVersion", "0");
    return a;
  }
}

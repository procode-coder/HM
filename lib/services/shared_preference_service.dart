import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  late SharedPreferences _sharedPreferences;

  Future initialise() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static const String AUTH_TOKEN = "authToken";
  static const String REFRESH_TOKEN = "refreshToken";
  static const String USER_NAME = "userName";
  static const String USER_ROLE = "userRole";
  static const String USER_ID = "userId";
  static const String PROFILE_PIC = "profilePic";
  static const String IS_DARK_MODE = "isDarkMode";

  void _saveToDisk<T>(String key, T content) {
    if (content is String) {
      _sharedPreferences.setString(key, content);
    }
    if (content is bool) {
      _sharedPreferences.setBool(key, content);
    }
    if (content is int) {
      _sharedPreferences.setInt(key, content);
    }
    if (content is double) {
      _sharedPreferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _sharedPreferences.setStringList(key, content);
    }
  }

  dynamic _getFromDisk(String key) {
    var value = _sharedPreferences.get(key);
    return value;
  }

  Future<void> clearLoginData() async {
    await _sharedPreferences.remove(AUTH_TOKEN);
    await _sharedPreferences.remove(REFRESH_TOKEN);
    await _sharedPreferences.remove(USER_NAME);
    await _sharedPreferences.remove(USER_ROLE);
    await _sharedPreferences.remove(USER_ID);
    await _sharedPreferences.remove(PROFILE_PIC);
    await _sharedPreferences.remove(IS_DARK_MODE);
  }

  String get authToken => _getFromDisk(AUTH_TOKEN) ?? "";
  set authToken(String value) => _saveToDisk(AUTH_TOKEN, value);

  String get refreshToken => _getFromDisk(REFRESH_TOKEN) ?? "";
  set refreshToken(String value) => _saveToDisk(REFRESH_TOKEN, value);

  String get userName => _getFromDisk(USER_NAME) ?? "";
  set userName(String value) => _saveToDisk(USER_NAME, value);

  String get userRole => _getFromDisk(USER_ROLE) ?? "";
  set userRole(String value) => _saveToDisk(USER_ROLE, value);

  String get userId => _getFromDisk(USER_ID) ?? "";
  set userId(String value) => _saveToDisk(USER_ID, value);

  String get profilePic => _getFromDisk(PROFILE_PIC) ?? "";
  set profilePic(String value) => _saveToDisk(PROFILE_PIC, value);

  bool get isDarkMode => _getFromDisk(IS_DARK_MODE) ?? false;
  set isDarkMode(bool value) => _saveToDisk(IS_DARK_MODE, value);
}

import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  const AuthLocalDataSource();

  //set user token
  Future<void> setUserToken(String token);

  //get the current token
  Future<String?> getUserToken();

  //set user role
  Future<void> setUserRole(String role);

  //get current user role
  Future<String?> getUserRole();

  //clear user data (role & token)
  Future<void> clearAllUserData();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  AuthLocalDataSourceImpl(this._prefs);

  final _keyToken = 'token';
  final _keyRole = 'role';

  final SharedPreferences _prefs;

  @override
  Future<String?> getUserRole() async {
    return _prefs.getString(_keyRole);
  }

  @override
  Future<String?> getUserToken() async {
    return _prefs.getString(_keyToken);
  }

  @override
  Future<void> setUserRole(String role) async {
    await _prefs.setString(_keyRole, role);
  }

  @override
  Future<void> setUserToken(String token) async {
    await _prefs.setString(_keyToken, token);
  }

  @override
  Future<void> clearAllUserData() async {
    await _prefs.remove(_keyToken);
    await _prefs.remove(_keyRole);
    // TODO: not sure if its correct to put clear
    // await _prefs.clear();
  }
}

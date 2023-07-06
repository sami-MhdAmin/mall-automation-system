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

  //TODO: from core yaman now its commented but we may need it later
  // AuthLocalDataSourceImpl(this._sharedPreferences);

  final _keyToken = 'token';
  final _keyRole = 'role';

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<String?> getUserRole() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_keyRole);
  }

  @override
  Future<String?> getUserToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_keyToken);
  }

  @override
  Future<void> setUserRole(String role) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_keyToken, role);
  }

  @override
  Future<void> setUserToken(String token) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_keyToken, token);
  }

  @override
  Future<void> clearAllUserData() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove(_keyToken);
    await prefs.remove(_keyRole);
    
  }
}

import 'package:jessy_mall/injection_container/global_injection.dart';

import 'auth_injection.dart';
import 'dio_init_client.dart';
import 'edit_store_injection.dart';
import 'favorite_injection.dart';
import 'income_outcome_injection.dart';
import 'profile_injection.dart';

Future<void> initInjection() async {
  await dioInjection();
  await globalInjection();
  await authInjection();
  await profileInjection();
  await favoriteInjection();
  await editStoreInjection();
  await incomeOutcomeInjection();
}

import 'package:jessy_mall/injection_container/global_injection.dart';
import 'package:jessy_mall/injection_container/invest_store_option_injection.dart';

import 'auth_injection.dart';
import 'dio_init_client.dart';
import 'home_injection.dart';
import 'edit_store_injection.dart';
import 'favorite_injection.dart';
import 'income_outcome_injection.dart';
import 'profile_injection.dart';

Future<void> initInjection() async {
  await dioInjection();
  await globalInjection();
  await authInjection();
  await profileInjection();
  await homeInjection();
  await editStoreInjection();
  await incomeOutcomeInjection();
}

import 'package:jessy_mall/injection_container/global_injection.dart';

import 'auth_injection.dart';
import 'dio_init_client.dart';

Future<void> initInjection() async {
  await dioInjection();
  await globalInjection();
  await authInjection();
}

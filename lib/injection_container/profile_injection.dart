import 'package:get_it/get_it.dart';

import '../core/network/network_info.dart';
import '../featuers/profile/data/datasource/remote/profile_remote_data_source.dart';
import '../featuers/profile/presentation/bloc/profile_bloc.dart';
import '../featuers/profile/repository/profile_repository.dart';
import '../featuers/profile/repository/profile_repository_impl.dart';
import 'auth_injection.dart';

Future<void> profileInjection() async {
  //remote data source
  locator.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(locator.get()),
  );

  //repository
  locator.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      locator.get<ProfileRemoteDataSource>(),
      locator.get<NetworkInfo>(),
    ),
  );

  //BLoC
  locator.registerFactory(
    () => ProfileBloc(
      locator.get<ProfileRepository>(),
    ),
  );
}

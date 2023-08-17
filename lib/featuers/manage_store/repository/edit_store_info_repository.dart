import 'package:dartz/dartz.dart';
import 'package:jessy_mall/featuers/manage_store/data/datasource/remote/edit_store_info_remote_datasource.dart';

import '../../../core/errors/base_error.dart';
import '../../../core/errors/execption.dart';
import '../../../core/network/network_info.dart';
import '../models/store_model.dart';

abstract class EditStoreInfoRepository{
    Future<Either<Failure, StoreModel>> getStoreInfo(String token);

}

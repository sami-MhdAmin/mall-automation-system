// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get_it/get_it.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:uuid/uuid.dart';

// import '../resources/const_manager.dart';

// class DioUtil {
//   static Future<Dio> createDioInstance() async {
//     final headers = <String, dynamic>{};

//     headers['Accept'] = 'application/json';
//     headers['Accept-Language'] = 'ar';
//     headers['A-Platform'] = 'mobile';
//     headers['A-Instance'] = ConstManage.uuid;
//     headers['content-Type'] = 'application/json';

//     headers['contentType'] = 'application/json';

//     final dio = Dio(
//       BaseOptions(headers: headers, baseUrl: ConstManage.url),
//     );

//     dio.interceptors.clear();

//     if (kDebugMode) {
//       dio.interceptors.add(
//         PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//         ),
//       );
//     }

//     // Uncomment if you need to add an interceptor
//     //
//     // dio.interceptors.add(
//     //   InterceptorsWrapper(
//     //     onRequest: (options, handler) {
//     //       return handler.next(options);
//     //     },
//     //     onResponse: (response, handler) {
//     //       return handler.next(response);
//     //     },
//     //     onError: (DioError e, handler) {
//     //       if (e.response == null) {
//     //         handler.next(e);
//     //         return;
//     //       }

//     //       handler.next(e);
//     //     },
//     //   ),
//     // );

//     return dio;
//   }
// }

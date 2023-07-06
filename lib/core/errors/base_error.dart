class Failuer {
  Failuer({required this.message, this.statusCode});
  String message;
  int? statusCode;
}

/// general failures
class ServerFailure implements Failuer {
  @override
  String message = 'Unexpexted Error Occured';
  @override
  int? statusCode;
}

class NoInternetFailure implements Failuer {
  @override
  String message = 'No Internet Connection';
  @override
  int? statusCode;
}

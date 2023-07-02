class Failuer {
  Failuer({required this.message,this.statusCode});
  String message;
  int ?statusCode;
}

/// general failures
class ServerFailure implements Failuer {
  @override
  String message = 'حدث خطا غير متوقع';
    @override
      int ?statusCode;

}

class NoInternetFailure implements Failuer {
  @override
  String message = 'لا يوجد اتصال بالانترنت';
    @override
      int ?statusCode;

}

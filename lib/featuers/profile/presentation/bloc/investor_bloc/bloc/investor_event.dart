part of 'investor_bloc.dart';

@immutable
class InvestorEvent {}

class InvestorRequestProductFromMyStore extends InvestorEvent {
  final String token;
  InvestorRequestProductFromMyStore({required this.token});
}
class InvestorDeleteProductFormMyStore extends InvestorEvent {
  final String token;
  final String productId;
  InvestorDeleteProductFormMyStore(
      {required this.token, required this.productId});
}

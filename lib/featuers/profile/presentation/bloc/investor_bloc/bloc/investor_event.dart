part of 'investor_bloc.dart';

@immutable
class InvestorEvent {}

class InvestorRequestProductFromMyStore extends InvestorEvent {
  final String token;
  InvestorRequestProductFromMyStore({required this.token});
}

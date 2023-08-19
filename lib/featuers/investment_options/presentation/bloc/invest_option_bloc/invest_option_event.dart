part of 'invest_option_bloc.dart';

@immutable
abstract class InvestOptionEvent {}

class GetInvestStoreOption extends InvestOptionEvent {
  final String token;

  GetInvestStoreOption({required this.token});
}

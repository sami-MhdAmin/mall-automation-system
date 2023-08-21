part of 'wearhouse_investor_bloc.dart';

@immutable
class WearhouseInvestorState {}

final class WearhouseInvestorInitial extends WearhouseInvestorState {}

final class WearhouseInvestorGetDataLoading extends WearhouseInvestorState {}

final class WearhouseInvestorGetDataSuccess extends WearhouseInvestorState {
  final WearhouseInvestorProductModel wearhouseInvestorProductModel;
  WearhouseInvestorGetDataSuccess(
      {required this.wearhouseInvestorProductModel});
}

final class WearhouseInvestorGetDataFailure extends WearhouseInvestorState {
  final Failure failure;
  WearhouseInvestorGetDataFailure({required this.failure});
}

final class WearhouseInvestorDeleteProductLoading
    extends WearhouseInvestorState {}

final class WearhouseInvestorDeleteProductSuccess
    extends WearhouseInvestorState {}

final class WearhouseInvestorDeleteProductFailure
    extends WearhouseInvestorState {
  final Failure failure;
  WearhouseInvestorDeleteProductFailure({required this.failure});
}


final class WearhouseInvestorRequestExtraSpaceLoading
    extends WearhouseInvestorState {}

final class WearhouseInvestorRequestExtraSpaceSuccess
    extends WearhouseInvestorState {}

final class WearhouseInvestorRequestExtraSpaceFailure
    extends WearhouseInvestorState {
  final Failure failure;
  WearhouseInvestorRequestExtraSpaceFailure({required this.failure});
}
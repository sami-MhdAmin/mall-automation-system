part of 'investor_bloc.dart';

@immutable
 class InvestorState {}

final class InvestorInitial extends InvestorState {}

final class InvestorGetProductLoading extends InvestorState {}

final class InvestorGetProductSuccess extends InvestorState {
  final InvestorProductModel investorProductModel;
  InvestorGetProductSuccess({required this.investorProductModel});
}

final class InvestorGetProductFailuer extends InvestorState {
  final Failure failure;
  InvestorGetProductFailuer({required this.failure});
}
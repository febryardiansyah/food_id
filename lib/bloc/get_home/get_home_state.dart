part of 'get_home_cubit.dart';

@immutable
abstract class GetHomeState {}

// initial state
class GetHomeInitial extends GetHomeState {}
// loading state
class GetHomeLoading extends GetHomeState {}
// success state
class GetHomeSuccess extends GetHomeState {
  final List<HomeModel> data;

  GetHomeSuccess(this.data);
}
// failure state
class GetHomeFailure extends GetHomeState {
  final String msg;

  GetHomeFailure(this.msg);
}

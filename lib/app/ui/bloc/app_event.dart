part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class GetBoardingEvent extends AppEvent {}

class ChangeBottomNavEvent extends AppEvent {
  final int index;
  final BuildContext context;

  const ChangeBottomNavEvent(this.index, this.context);

  @override
  List<Object> get props => [index, context];
}

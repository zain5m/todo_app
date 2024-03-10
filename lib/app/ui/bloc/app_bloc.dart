import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/app/ui/bloc/app_state.dart';
import 'package:todo_tesk/core/config/routing/routing.dart';

part 'app_event.dart';

@LazySingleton()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    // on<GetBoardingEvent>(_getBoarding);
    on<ChangeBottomNavEvent>(_changeBottomNav);
  }
  static AppBloc get(context) => BlocProvider.of(context);
  FutureOr<void> _changeBottomNav(
      ChangeBottomNavEvent event, Emitter<AppState> emit) {
    switch (event.index) {
      case 0:
        HomeRoute().go(event.context);
        break;
      case 1:
        NewTaskRoute().go(event.context);
        break;
      case 2:
        DoneTaskRoute().go(event.context);
        break;
    }
    emit(state.rebuild((b) => b..currentIndex = event.index));
  }
  // FutureOr<void> _getBoarding(
  //     GetBoardingEvent event, Emitter<AppState> emit) async {
  //   emit(state.copyWith(
  //     boarding:
  //         await baseCacheHelper.getData(key: AppStorageKey.boarding) ?? false,
  //   ));
  // }
}

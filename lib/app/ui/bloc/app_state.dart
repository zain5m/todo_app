import 'package:built_value/built_value.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  bool get isBoarding;
  int get currentIndex;

  AppState._();

  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initial() => AppState(
        (b) => b
          ..isBoarding = false
          ..currentIndex = 0,
      );
}

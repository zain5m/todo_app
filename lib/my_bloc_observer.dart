
import 'package:bloc/bloc.dart';

import 'core/dev.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    Dev.observerPrint('onCreate', bloc.runtimeType);
  }

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   super.onEvent(bloc, event);
  //   log('onEvent -- ${bloc.runtimeType}, $event');
  // }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // log('onChange -- ${bloc.runtimeType}, $change');
    Dev.observerPrint('onChange', bloc.runtimeType, change);
  }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   super.onTransition(bloc, transition);
  //   log('onTransition -- ${bloc.runtimeType}, $transition');
  // }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Dev.observerPrint('onError', bloc.runtimeType, error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    Dev.observerPrint('onClose', bloc.runtimeType);
  }
}

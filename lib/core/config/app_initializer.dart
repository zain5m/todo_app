import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo_tesk/core/config/di/injection.dart';
import 'package:todo_tesk/core/services/local/hive/hive_initializer.dart';
import 'package:todo_tesk/my_bloc_observer.dart';

abstract class AppInitializer {
  static init() async {
    /// because binding should be initialized before calling runApp.
    WidgetsFlutterBinding.ensureInitialized();

    /// run on portrait mode
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    /// loading .env file
    // await dotenv.load(fileName: '.env');

    ///initialize EasyLocalization
    await EasyLocalization.ensureInitialized();

    // / initialize routing
    // AppRouter.init();

    /// hive initialize
    await HiveInitializer.initialize();

    /// dependencies injection
    await configureDependenciesInjection();

    /// hive initialize
    Bloc.observer = MyBlocObserver();

    /// hive initialize
    // await HiveInitializer.initialize();
  }
}

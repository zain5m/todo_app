import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/config/di/injection.config.dart';
import 'package:todo_tesk/core/services/local/hive/hive_initializer.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependenciesInjection() async => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @lazySingleton
  @preResolve
  Future<Box<LocalTaskModel>> get box => HiveInitializer.initBox();

  //

  // url here will be injected
  // @lazySingleton
  // void dio(@Named('BaseUrl') String url) => SharedPreferences.getInstance();

  // @preResolve
  // final prefs = await SharedPreferences.getInstance();
}

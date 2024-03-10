// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../../app/ui/bloc/app_bloc.dart' as _i3;
import '../../../features/test/data/datasources/task_local_data_sources.dart'
    as _i6;
import '../../../features/test/data/models/task.dart' as _i5;
import '../../../features/test/data/repository/task_repository.dart' as _i8;
import '../../../features/test/domain/repository/base_task_repository.dart'
    as _i7;
import '../../../features/test/domain/usecases/add_task_use_case.dart' as _i12;
import '../../../features/test/domain/usecases/delete_task_use_case.dart'
    as _i9;
import '../../../features/test/domain/usecases/get_task_use_case.dart' as _i10;
import '../../../features/test/domain/usecases/update_task_use_case.dart'
    as _i11;
import '../../../features/test/ui/bloc/task_bloc.dart' as _i13;
import 'injection.dart' as _i14;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc());
  await gh.lazySingletonAsync<_i4.Box<_i5.LocalTaskModel>>(
    () => registerModule.box,
    preResolve: true,
  );
  gh.lazySingleton<_i6.BaseTaskLocalDataSources>(
      () => _i6.TaskLocalDataSources(gh<_i4.Box<_i5.LocalTaskModel>>()));
  gh.lazySingleton<_i7.BaseTaskRepository>(
      () => _i8.TaskRepository(gh<_i6.BaseTaskLocalDataSources>()));
  gh.lazySingleton<_i9.DeleteTaskUseCase>(
      () => _i9.DeleteTaskUseCase(gh<_i7.BaseTaskRepository>()));
  gh.lazySingleton<_i10.GetTaskUseCase>(
      () => _i10.GetTaskUseCase(gh<_i7.BaseTaskRepository>()));
  gh.lazySingleton<_i11.UpdateTaskUseCase>(
      () => _i11.UpdateTaskUseCase(gh<_i7.BaseTaskRepository>()));
  gh.lazySingleton<_i12.AddTaskUseCase>(
      () => _i12.AddTaskUseCase(gh<_i7.BaseTaskRepository>()));
  gh.lazySingleton<_i13.TaskBloc>(() => _i13.TaskBloc(
        gh<_i10.GetTaskUseCase>(),
        gh<_i12.AddTaskUseCase>(),
        gh<_i9.DeleteTaskUseCase>(),
        gh<_i11.UpdateTaskUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i14.RegisterModule {}

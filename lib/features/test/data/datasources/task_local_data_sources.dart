import 'package:easy_localization/easy_localization.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/config/localization/locale_keys.g.dart';
import 'package:todo_tesk/core/dev.dart';
import 'package:todo_tesk/core/error/exceptions.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';

abstract class BaseTaskLocalDataSources {
  Future<List<LocalTaskModel>> getTask();
  // Stream<List<TaskEntities>> getTask();
  Future<String> addTask(LocalTaskModel task);
  Future<String> deleteTask(String id);
  Future<String> updateTask(LocalTaskModel task);
}

@LazySingleton(as: BaseTaskLocalDataSources)
class TaskLocalDataSources implements BaseTaskLocalDataSources {
  final Box<LocalTaskModel> _box;

  TaskLocalDataSources(this._box);

  @override
  Future<List<LocalTaskModel>> getTask() async {
    try {
      return _box.values.toList();
    } catch (_) {
      throw DatabaseException(message: LocaleKeys.error_add_task.tr());
    }
  }

  @override
  Future<String> addTask(LocalTaskModel task) async {
    try {
      await _box.put(task.id, task);
      return LocaleKeys.success_add_task.tr();
    } catch (_) {
      throw DatabaseException(message: LocaleKeys.error_add_task.tr());
    }
  }

  @override
  Future<String> deleteTask(String id) async {
    try {
      await _box.delete(id);
      return LocaleKeys.success_delete_task.tr();
    } catch (_) {
      throw DatabaseException(message: LocaleKeys.error_delete_task.tr());
    }
  }

  @override
  Future<String> updateTask(LocalTaskModel task) async {
    try {
      task.isCompleted = !task.isCompleted;
      await task.save();
      return LocaleKeys.success_update_task.tr();
    } catch (e) {
      Dev.console([e]);
      throw DatabaseException(message: LocaleKeys.error_update_task.tr());
    }
  }

  // @override
  // // Future<Stream<List<TaskModel>>> getTask() {
  // Stream<List<TaskEntities>> getTask() {
  //   try {
  //     return Stream.value(_box.listenable()).map(
  //       (event) => event.value.values.toList(),
  //     );
  //   } catch (_) {
  //     throw DatabaseException(message: LocaleKeys.error_update_task.tr());
  //   }
  // }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/error/exceptions.dart';
import 'package:todo_tesk/core/error/failure.dart';
import 'package:todo_tesk/features/test/data/datasources/task_local_data_sources.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';
import 'package:todo_tesk/features/test/domain/repository/base_task_repository.dart';

@LazySingleton(as: BaseTaskRepository)
class TaskRepository implements BaseTaskRepository {
  final BaseTaskLocalDataSources _baseTaskLocalDataSources;

  TaskRepository(this._baseTaskLocalDataSources);

  @override
  Future<Either<Failure, List<LocalTaskModel>>> getTask() async {
    try {
      final result = await _baseTaskLocalDataSources.getTask();
      return Right(result);
    } on DatabaseException catch (failure) {
      return left(DatabaseFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, String>> addTask(LocalTaskModel task) async {
    try {
      final result = await _baseTaskLocalDataSources.addTask(task);
      return Right(result);
    } on DatabaseException catch (failure) {
      return left(DatabaseFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, String>> deleteTask(String id) async {
    try {
      final result = await _baseTaskLocalDataSources.deleteTask(id);
      return Right(result);
    } on DatabaseException catch (failure) {
      return left(DatabaseFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, String>> updateTask(LocalTaskModel task) async {
    try {
      final result = await _baseTaskLocalDataSources.updateTask(task);
      return Right(result);
    } on DatabaseException catch (failure) {
      return left(DatabaseFailure(failure.message));
    }
  }

  // @override
  // Stream<List<t.TaskEntities>> getTask() {
  //   // try {
  //   final result = _baseTaskLocalDataSources.getTask();
  //   Dev.console([result]);
  //   return result;
  //   // } on DatabaseException catch (failure) {
  //   //   return left(DatabaseFailure(failure.message));
  //   // }
  // }

  // @override
  // Future<Either<Failure, Stream<List<t.Task>>>> getTask() async {
  //  Future<Stream<List<t.Task>>> getTask() async {
  //   try {
  //     final result = await _baseTaskLocalDataSources.getTask();
  //     return Right(result);
  //   } on DatabaseException catch (failure) {
  //     return left(DatabaseFailure(failure.message));
  //   }
  // }
}

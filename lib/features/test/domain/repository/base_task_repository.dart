import 'package:dartz/dartz.dart';
import 'package:todo_tesk/core/error/failure.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';

abstract class BaseTaskRepository {
  Future<Either<Failure, List<LocalTaskModel>>> getTask();
  Future<Either<Failure, String>> addTask(LocalTaskModel task);
  Future<Either<Failure, String>> deleteTask(String id);
  Future<Either<Failure, String>> updateTask(LocalTaskModel task);
}

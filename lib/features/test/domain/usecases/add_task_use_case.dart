import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/architecture/usecase/base_usecase.dart';
import 'package:todo_tesk/core/error/failure.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';
import 'package:todo_tesk/features/test/domain/repository/base_task_repository.dart';

@LazySingleton()
class AddTaskUseCase extends BaseUseCase<String, LocalTaskModel> {
  final BaseTaskRepository _baseTaskRepository;

  AddTaskUseCase(this._baseTaskRepository);

  @override
  Future<Either<Failure, String>> call(LocalTaskModel params) async {
    return await _baseTaskRepository.addTask(params);
  }
}

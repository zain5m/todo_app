import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/architecture/usecase/base_usecase.dart';
import 'package:todo_tesk/core/error/failure.dart';
import 'package:todo_tesk/features/test/domain/repository/base_task_repository.dart';

@LazySingleton()
class DeleteTaskUseCase extends BaseUseCase<String, String> {
  final BaseTaskRepository _baseTaskRepository;

  DeleteTaskUseCase(this._baseTaskRepository);

  @override
  Future<Either<Failure, String>> call(String params) async {
    return await _baseTaskRepository.deleteTask(params);
  }
}

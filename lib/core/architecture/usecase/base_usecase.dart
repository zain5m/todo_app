import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_tesk/core/error/failure.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}

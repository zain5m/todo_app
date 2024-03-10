part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class GetTaskEvent extends TaskEvent {}

class EditListTaskEvent extends TaskEvent {
  final List<LocalTaskModel> tasks;

  const EditListTaskEvent(this.tasks);

  @override
  List<Object> get props => [tasks];
}

class AddTaskEvent extends TaskEvent {}

class DeleteTaskEvent extends TaskEvent {
  final String id;

  const DeleteTaskEvent(this.id);

  @override
  List<Object> get props => [id];
}

class UpdateTaskEvent extends TaskEvent {
  final LocalTaskModel task;

  const UpdateTaskEvent(this.task);

  @override
  List<Object> get props => [task];
}

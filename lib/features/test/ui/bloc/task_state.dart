import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todo_tesk/core/enum/request_state.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';

part 'task_state.g.dart';

abstract class TaskState implements Built<TaskState, TaskStateBuilder> {
  BuiltList<LocalTaskModel> get tasks;

  List<LocalTaskModel> get allTasks => tasks.toList()
    ..sort((a, b) => b.createdAtDate.compareTo(a.createdAtDate));
  List<LocalTaskModel> get doneTasks =>
      tasks.toList().where((element) => element.isCompleted).toList();
  List<LocalTaskModel> get newTasks =>
      tasks.toList().where((element) => !element.isCompleted).toList();

  String get error;
  RequestState get statusGetTasks;

  String get errorAddTask;
  RequestStateInitial get statusAddTask;

  String get errorDeleteTask;
  RequestStateInitial get statusDeleteTask;

  String get errorUpdateTask;
  RequestStateInitial get statusUpdateTask;
  //
  int get valueOfTheIndicator => tasks.isNotEmpty ? tasks.length : 3;

  TaskState._();

  factory TaskState([void Function(TaskStateBuilder b) updates]) = _$TaskState;

  factory TaskState.initial() => TaskState(
        (b) => b
          ..error = ""
          ..statusGetTasks = RequestState.loading
          ..errorAddTask = ""
          ..statusAddTask = RequestStateInitial.initial
          ..errorDeleteTask = ""
          ..statusDeleteTask = RequestStateInitial.initial
          ..errorUpdateTask = ""
          ..statusUpdateTask = RequestStateInitial.initial,
      );
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_tesk/core/architecture/usecase/base_usecase.dart';
import 'package:todo_tesk/core/enum/request_state.dart';
import 'package:todo_tesk/features/test/data/models/task.dart';
import 'package:todo_tesk/features/test/domain/usecases/add_task_use_case.dart';
import 'package:todo_tesk/features/test/domain/usecases/delete_task_use_case.dart';
import 'package:todo_tesk/features/test/domain/usecases/get_task_use_case.dart';
import 'package:todo_tesk/features/test/domain/usecases/update_task_use_case.dart';
import 'package:todo_tesk/features/test/ui/bloc/task_state.dart';

part 'task_event.dart';

@LazySingleton()
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTaskUseCase _getTaskUseCase;
  final AddTaskUseCase _addTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  TaskBloc(
    this._getTaskUseCase,
    this._addTaskUseCase,
    this._deleteTaskUseCase,
    this._updateTaskUseCase,
  ) : super(TaskState.initial()) {
    on<GetTaskEvent>(_getTask);
    // on<EditListTaskEvent>(_editListTask);
    on<AddTaskEvent>(_addTask);
    on<DeleteTaskEvent>(_deleteTask);
    on<UpdateTaskEvent>(_updateTask);
  }

  static TaskBloc get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();

  FutureOr<void> _getTask(GetTaskEvent event, Emitter<TaskState> emit) async {
    final result = await _getTaskUseCase(const NoParams());
    result.fold(
      (l) => emit(
        state.rebuild(
          (b) => b
            ..error = l.message
            ..statusGetTasks = RequestState.error,
        ),
      ),
      (r) => emit(
        state.rebuild(
          (b) => b
            ..tasks.replace(r)
            ..statusGetTasks = RequestState.success,
        ),
      ),
    );

    // listening(result);
  }

  // void listening(Stream<List<TaskEntities>> r) {
  //   Dev.console(["listening => $r"]);
  //   r.listen((tasks) {
  //     Dev.console(["tasks"]);
  //     Dev.console([tasks]);
  //     add(EditListTaskEvent(tasks));
  //   });
  // }

  // FutureOr<void> _editListTask(
  //     EditListTaskEvent event, Emitter<TaskState> emit) {
  //   Dev.console(["event.tasks"]);
  //   Dev.console([event.tasks]);
  //   emit(state.rebuild((b) => b..tasks.replace(event.tasks)));
  // }

  FutureOr<void> _addTask(AddTaskEvent event, Emitter<TaskState> emit) async {
    emit(state.rebuild((b) => b..statusAddTask = RequestStateInitial.loading));
    LocalTaskModel task = LocalTaskModel.create(
      title: titleController.text,
      subtitle:
          subtitleController.text.isNotEmpty ? subtitleController.text : "",
    );
    final result = await _addTaskUseCase(task);
    result.fold(
      (l) => emit(
        state.rebuild(
          (b) => b
            ..errorAddTask = l.message
            ..statusAddTask = RequestStateInitial.error,
        ),
      ),
      (r) => emit(
        state.rebuild(
          (b) => b
            ..statusAddTask = RequestStateInitial.success
            ..tasks.add(task),
        ),
      ),
    );
  }

  FutureOr<void> _deleteTask(
      DeleteTaskEvent event, Emitter<TaskState> emit) async {
    emit(
      state.rebuild((b) => b.statusDeleteTask = RequestStateInitial.initial),
    );
    final result = await _deleteTaskUseCase(event.id);
    result.fold(
      (l) => emit(
        state.rebuild(
          (b) => b
            ..errorDeleteTask = l.message
            ..statusDeleteTask = RequestStateInitial.error,
        ),
      ),
      (r) => emit(
        state.rebuild(
          (b) => b
            ..statusDeleteTask = RequestStateInitial.success
            ..tasks.removeWhere((e) => e.id == event.id),
        ),
      ),
    );
  }

  FutureOr<void> _updateTask(
      UpdateTaskEvent event, Emitter<TaskState> emit) async {
    emit(
        state.rebuild((b) => b.statusUpdateTask = RequestStateInitial.initial));

    // LocalTaskModel updateTask = event.params.task;
    // List<LocalTaskModel> updateTasks = state.tasks.toList();
    // updateTask.isCompleted = event.params.isCompleted;
    // final index = state.tasks
    //     .toList()
    //     .indexWhere((element) => element.id == event.task.id);
    // final newModel = LocalTaskModel(
    //   id: event.task.id,
    //   title: event.task.title,
    //   subtitle: event.task.subtitle,
    //   createdAtTime: event.task.createdAtTime,
    //   createdAtDate: event.task.createdAtDate,
    //   isCompleted: !event.task.isCompleted,
    // );
    // updateTasks.replaceRange(index, index + 1, [newModel]);
    final result = await _updateTaskUseCase(event.task);
    result.fold(
      (l) => emit(state.rebuild(
        (b) => b
          ..statusUpdateTask = RequestStateInitial.error
          ..errorUpdateTask = l.message,
      )),
      (r) {
        emit(
          state.rebuild(
            (b) => b.statusUpdateTask = RequestStateInitial.success,
          ),
        );
      },
    );
  }
}

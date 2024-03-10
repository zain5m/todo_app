// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskState extends TaskState {
  @override
  final BuiltList<LocalTaskModel> tasks;
  @override
  final String error;
  @override
  final RequestState statusGetTasks;
  @override
  final String errorAddTask;
  @override
  final RequestStateInitial statusAddTask;
  @override
  final String errorDeleteTask;
  @override
  final RequestStateInitial statusDeleteTask;
  @override
  final String errorUpdateTask;
  @override
  final RequestStateInitial statusUpdateTask;

  factory _$TaskState([void Function(TaskStateBuilder)? updates]) =>
      (new TaskStateBuilder()..update(updates))._build();

  _$TaskState._(
      {required this.tasks,
      required this.error,
      required this.statusGetTasks,
      required this.errorAddTask,
      required this.statusAddTask,
      required this.errorDeleteTask,
      required this.statusDeleteTask,
      required this.errorUpdateTask,
      required this.statusUpdateTask})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(tasks, r'TaskState', 'tasks');
    BuiltValueNullFieldError.checkNotNull(error, r'TaskState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        statusGetTasks, r'TaskState', 'statusGetTasks');
    BuiltValueNullFieldError.checkNotNull(
        errorAddTask, r'TaskState', 'errorAddTask');
    BuiltValueNullFieldError.checkNotNull(
        statusAddTask, r'TaskState', 'statusAddTask');
    BuiltValueNullFieldError.checkNotNull(
        errorDeleteTask, r'TaskState', 'errorDeleteTask');
    BuiltValueNullFieldError.checkNotNull(
        statusDeleteTask, r'TaskState', 'statusDeleteTask');
    BuiltValueNullFieldError.checkNotNull(
        errorUpdateTask, r'TaskState', 'errorUpdateTask');
    BuiltValueNullFieldError.checkNotNull(
        statusUpdateTask, r'TaskState', 'statusUpdateTask');
  }

  @override
  TaskState rebuild(void Function(TaskStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskStateBuilder toBuilder() => new TaskStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskState &&
        tasks == other.tasks &&
        error == other.error &&
        statusGetTasks == other.statusGetTasks &&
        errorAddTask == other.errorAddTask &&
        statusAddTask == other.statusAddTask &&
        errorDeleteTask == other.errorDeleteTask &&
        statusDeleteTask == other.statusDeleteTask &&
        errorUpdateTask == other.errorUpdateTask &&
        statusUpdateTask == other.statusUpdateTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tasks.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, statusGetTasks.hashCode);
    _$hash = $jc(_$hash, errorAddTask.hashCode);
    _$hash = $jc(_$hash, statusAddTask.hashCode);
    _$hash = $jc(_$hash, errorDeleteTask.hashCode);
    _$hash = $jc(_$hash, statusDeleteTask.hashCode);
    _$hash = $jc(_$hash, errorUpdateTask.hashCode);
    _$hash = $jc(_$hash, statusUpdateTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskState')
          ..add('tasks', tasks)
          ..add('error', error)
          ..add('statusGetTasks', statusGetTasks)
          ..add('errorAddTask', errorAddTask)
          ..add('statusAddTask', statusAddTask)
          ..add('errorDeleteTask', errorDeleteTask)
          ..add('statusDeleteTask', statusDeleteTask)
          ..add('errorUpdateTask', errorUpdateTask)
          ..add('statusUpdateTask', statusUpdateTask))
        .toString();
  }
}

class TaskStateBuilder implements Builder<TaskState, TaskStateBuilder> {
  _$TaskState? _$v;

  ListBuilder<LocalTaskModel>? _tasks;
  ListBuilder<LocalTaskModel> get tasks =>
      _$this._tasks ??= new ListBuilder<LocalTaskModel>();
  set tasks(ListBuilder<LocalTaskModel>? tasks) => _$this._tasks = tasks;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  RequestState? _statusGetTasks;
  RequestState? get statusGetTasks => _$this._statusGetTasks;
  set statusGetTasks(RequestState? statusGetTasks) =>
      _$this._statusGetTasks = statusGetTasks;

  String? _errorAddTask;
  String? get errorAddTask => _$this._errorAddTask;
  set errorAddTask(String? errorAddTask) => _$this._errorAddTask = errorAddTask;

  RequestStateInitial? _statusAddTask;
  RequestStateInitial? get statusAddTask => _$this._statusAddTask;
  set statusAddTask(RequestStateInitial? statusAddTask) =>
      _$this._statusAddTask = statusAddTask;

  String? _errorDeleteTask;
  String? get errorDeleteTask => _$this._errorDeleteTask;
  set errorDeleteTask(String? errorDeleteTask) =>
      _$this._errorDeleteTask = errorDeleteTask;

  RequestStateInitial? _statusDeleteTask;
  RequestStateInitial? get statusDeleteTask => _$this._statusDeleteTask;
  set statusDeleteTask(RequestStateInitial? statusDeleteTask) =>
      _$this._statusDeleteTask = statusDeleteTask;

  String? _errorUpdateTask;
  String? get errorUpdateTask => _$this._errorUpdateTask;
  set errorUpdateTask(String? errorUpdateTask) =>
      _$this._errorUpdateTask = errorUpdateTask;

  RequestStateInitial? _statusUpdateTask;
  RequestStateInitial? get statusUpdateTask => _$this._statusUpdateTask;
  set statusUpdateTask(RequestStateInitial? statusUpdateTask) =>
      _$this._statusUpdateTask = statusUpdateTask;

  TaskStateBuilder();

  TaskStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks.toBuilder();
      _error = $v.error;
      _statusGetTasks = $v.statusGetTasks;
      _errorAddTask = $v.errorAddTask;
      _statusAddTask = $v.statusAddTask;
      _errorDeleteTask = $v.errorDeleteTask;
      _statusDeleteTask = $v.statusDeleteTask;
      _errorUpdateTask = $v.errorUpdateTask;
      _statusUpdateTask = $v.statusUpdateTask;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskState;
  }

  @override
  void update(void Function(TaskStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskState build() => _build();

  _$TaskState _build() {
    _$TaskState _$result;
    try {
      _$result = _$v ??
          new _$TaskState._(
              tasks: tasks.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'TaskState', 'error'),
              statusGetTasks: BuiltValueNullFieldError.checkNotNull(
                  statusGetTasks, r'TaskState', 'statusGetTasks'),
              errorAddTask: BuiltValueNullFieldError.checkNotNull(
                  errorAddTask, r'TaskState', 'errorAddTask'),
              statusAddTask: BuiltValueNullFieldError.checkNotNull(
                  statusAddTask, r'TaskState', 'statusAddTask'),
              errorDeleteTask: BuiltValueNullFieldError.checkNotNull(
                  errorDeleteTask, r'TaskState', 'errorDeleteTask'),
              statusDeleteTask: BuiltValueNullFieldError.checkNotNull(
                  statusDeleteTask, r'TaskState', 'statusDeleteTask'),
              errorUpdateTask: BuiltValueNullFieldError.checkNotNull(
                  errorUpdateTask, r'TaskState', 'errorUpdateTask'),
              statusUpdateTask: BuiltValueNullFieldError.checkNotNull(
                  statusUpdateTask, r'TaskState', 'statusUpdateTask'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TaskState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

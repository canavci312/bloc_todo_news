// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<TodoTask> todoTasks) {
    return _LoadSuccess(
      todoTasks,
    );
  }

  _Error error(TodoFailure todoFailure) {
    return _Error(
      todoFailure,
    );
  }
}

/// @nodoc
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TodoTask> todoTasks) loadSuccess,
    required TResult Function(TodoFailure todoFailure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TodoTask> todoTasks) loadSuccess,
    required TResult Function(TodoFailure todoFailure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TodoState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TodoTask> todoTasks) loadSuccess,
    required TResult Function(TodoFailure todoFailure) error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TodoState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<TodoTask> todoTasks});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? todoTasks = freezed,
  }) {
    return _then(_LoadSuccess(
      todoTasks == freezed
          ? _value.todoTasks
          : todoTasks // ignore: cast_nullable_to_non_nullable
              as List<TodoTask>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.todoTasks);

  @override
  final List<TodoTask> todoTasks;

  @override
  String toString() {
    return 'TodoState.loadSuccess(todoTasks: $todoTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.todoTasks, todoTasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoTasks));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TodoTask> todoTasks) loadSuccess,
    required TResult Function(TodoFailure todoFailure) error,
  }) {
    return loadSuccess(todoTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
  }) {
    return loadSuccess?.call(todoTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(todoTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TodoState {
  const factory _LoadSuccess(List<TodoTask> todoTasks) = _$_LoadSuccess;

  List<TodoTask> get todoTasks;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({TodoFailure todoFailure});

  $TodoFailureCopyWith<$Res> get todoFailure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? todoFailure = freezed,
  }) {
    return _then(_Error(
      todoFailure == freezed
          ? _value.todoFailure
          : todoFailure // ignore: cast_nullable_to_non_nullable
              as TodoFailure,
    ));
  }

  @override
  $TodoFailureCopyWith<$Res> get todoFailure {
    return $TodoFailureCopyWith<$Res>(_value.todoFailure, (value) {
      return _then(_value.copyWith(todoFailure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.todoFailure);

  @override
  final TodoFailure todoFailure;

  @override
  String toString() {
    return 'TodoState.error(todoFailure: $todoFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other.todoFailure, todoFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(todoFailure));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TodoTask> todoTasks) loadSuccess,
    required TResult Function(TodoFailure todoFailure) error,
  }) {
    return error(todoFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
  }) {
    return error?.call(todoFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TodoTask> todoTasks)? loadSuccess,
    TResult Function(TodoFailure todoFailure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(todoFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error(TodoFailure todoFailure) = _$_Error;

  TodoFailure get todoFailure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  AddTask addTask(TodoTask task) {
    return AddTask(
      task,
    );
  }

  UpdateTask updateTask(TodoTask task) {
    return UpdateTask(
      task,
    );
  }

  RemoveTask removeTask(TodoTask task) {
    return RemoveTask(
      task,
    );
  }

  FetchTask subscribe() {
    return const FetchTask();
  }

  TaskRecieved taskRecieved(
      Either<TodoFailure, List<TodoTask>> todoTaskOrFail) {
    return TaskRecieved(
      todoTaskOrFail,
    );
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class $AddTaskCopyWith<$Res> {
  factory $AddTaskCopyWith(AddTask value, $Res Function(AddTask) then) =
      _$AddTaskCopyWithImpl<$Res>;
  $Res call({TodoTask task});
}

/// @nodoc
class _$AddTaskCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $AddTaskCopyWith<$Res> {
  _$AddTaskCopyWithImpl(AddTask _value, $Res Function(AddTask) _then)
      : super(_value, (v) => _then(v as AddTask));

  @override
  AddTask get _value => super._value as AddTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(AddTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoTask,
    ));
  }
}

/// @nodoc

class _$AddTask implements AddTask {
  const _$AddTask(this.task);

  @override
  final TodoTask task;

  @override
  String toString() {
    return 'TodoEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  $AddTaskCopyWith<AddTask> get copyWith =>
      _$AddTaskCopyWithImpl<AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements TodoEvent {
  const factory AddTask(TodoTask task) = _$AddTask;

  TodoTask get task;
  @JsonKey(ignore: true)
  $AddTaskCopyWith<AddTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskCopyWith<$Res> {
  factory $UpdateTaskCopyWith(
          UpdateTask value, $Res Function(UpdateTask) then) =
      _$UpdateTaskCopyWithImpl<$Res>;
  $Res call({TodoTask task});
}

/// @nodoc
class _$UpdateTaskCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $UpdateTaskCopyWith<$Res> {
  _$UpdateTaskCopyWithImpl(UpdateTask _value, $Res Function(UpdateTask) _then)
      : super(_value, (v) => _then(v as UpdateTask));

  @override
  UpdateTask get _value => super._value as UpdateTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(UpdateTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoTask,
    ));
  }
}

/// @nodoc

class _$UpdateTask implements UpdateTask {
  const _$UpdateTask(this.task);

  @override
  final TodoTask task;

  @override
  String toString() {
    return 'TodoEvent.updateTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  $UpdateTaskCopyWith<UpdateTask> get copyWith =>
      _$UpdateTaskCopyWithImpl<UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTask implements TodoEvent {
  const factory UpdateTask(TodoTask task) = _$UpdateTask;

  TodoTask get task;
  @JsonKey(ignore: true)
  $UpdateTaskCopyWith<UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveTaskCopyWith<$Res> {
  factory $RemoveTaskCopyWith(
          RemoveTask value, $Res Function(RemoveTask) then) =
      _$RemoveTaskCopyWithImpl<$Res>;
  $Res call({TodoTask task});
}

/// @nodoc
class _$RemoveTaskCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $RemoveTaskCopyWith<$Res> {
  _$RemoveTaskCopyWithImpl(RemoveTask _value, $Res Function(RemoveTask) _then)
      : super(_value, (v) => _then(v as RemoveTask));

  @override
  RemoveTask get _value => super._value as RemoveTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(RemoveTask(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoTask,
    ));
  }
}

/// @nodoc

class _$RemoveTask implements RemoveTask {
  const _$RemoveTask(this.task);

  @override
  final TodoTask task;

  @override
  String toString() {
    return 'TodoEvent.removeTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  $RemoveTaskCopyWith<RemoveTask> get copyWith =>
      _$RemoveTaskCopyWithImpl<RemoveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) {
    return removeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) {
    return removeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class RemoveTask implements TodoEvent {
  const factory RemoveTask(TodoTask task) = _$RemoveTask;

  TodoTask get task;
  @JsonKey(ignore: true)
  $RemoveTaskCopyWith<RemoveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTaskCopyWith<$Res> {
  factory $FetchTaskCopyWith(FetchTask value, $Res Function(FetchTask) then) =
      _$FetchTaskCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchTaskCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $FetchTaskCopyWith<$Res> {
  _$FetchTaskCopyWithImpl(FetchTask _value, $Res Function(FetchTask) _then)
      : super(_value, (v) => _then(v as FetchTask));

  @override
  FetchTask get _value => super._value as FetchTask;
}

/// @nodoc

class _$FetchTask implements FetchTask {
  const _$FetchTask();

  @override
  String toString() {
    return 'TodoEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class FetchTask implements TodoEvent {
  const factory FetchTask() = _$FetchTask;
}

/// @nodoc
abstract class $TaskRecievedCopyWith<$Res> {
  factory $TaskRecievedCopyWith(
          TaskRecieved value, $Res Function(TaskRecieved) then) =
      _$TaskRecievedCopyWithImpl<$Res>;
  $Res call({Either<TodoFailure, List<TodoTask>> todoTaskOrFail});
}

/// @nodoc
class _$TaskRecievedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $TaskRecievedCopyWith<$Res> {
  _$TaskRecievedCopyWithImpl(
      TaskRecieved _value, $Res Function(TaskRecieved) _then)
      : super(_value, (v) => _then(v as TaskRecieved));

  @override
  TaskRecieved get _value => super._value as TaskRecieved;

  @override
  $Res call({
    Object? todoTaskOrFail = freezed,
  }) {
    return _then(TaskRecieved(
      todoTaskOrFail == freezed
          ? _value.todoTaskOrFail
          : todoTaskOrFail // ignore: cast_nullable_to_non_nullable
              as Either<TodoFailure, List<TodoTask>>,
    ));
  }
}

/// @nodoc

class _$TaskRecieved implements TaskRecieved {
  const _$TaskRecieved(this.todoTaskOrFail);

  @override
  final Either<TodoFailure, List<TodoTask>> todoTaskOrFail;

  @override
  String toString() {
    return 'TodoEvent.taskRecieved(todoTaskOrFail: $todoTaskOrFail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskRecieved &&
            const DeepCollectionEquality()
                .equals(other.todoTaskOrFail, todoTaskOrFail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(todoTaskOrFail));

  @JsonKey(ignore: true)
  @override
  $TaskRecievedCopyWith<TaskRecieved> get copyWith =>
      _$TaskRecievedCopyWithImpl<TaskRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodoTask task) addTask,
    required TResult Function(TodoTask task) updateTask,
    required TResult Function(TodoTask task) removeTask,
    required TResult Function() subscribe,
    required TResult Function(
            Either<TodoFailure, List<TodoTask>> todoTaskOrFail)
        taskRecieved,
  }) {
    return taskRecieved(todoTaskOrFail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
  }) {
    return taskRecieved?.call(todoTaskOrFail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodoTask task)? addTask,
    TResult Function(TodoTask task)? updateTask,
    TResult Function(TodoTask task)? removeTask,
    TResult Function()? subscribe,
    TResult Function(Either<TodoFailure, List<TodoTask>> todoTaskOrFail)?
        taskRecieved,
    required TResult orElse(),
  }) {
    if (taskRecieved != null) {
      return taskRecieved(todoTaskOrFail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(FetchTask value) subscribe,
    required TResult Function(TaskRecieved value) taskRecieved,
  }) {
    return taskRecieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
  }) {
    return taskRecieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(FetchTask value)? subscribe,
    TResult Function(TaskRecieved value)? taskRecieved,
    required TResult orElse(),
  }) {
    if (taskRecieved != null) {
      return taskRecieved(this);
    }
    return orElse();
  }
}

abstract class TaskRecieved implements TodoEvent {
  const factory TaskRecieved(
      Either<TodoFailure, List<TodoTask>> todoTaskOrFail) = _$TaskRecieved;

  Either<TodoFailure, List<TodoTask>> get todoTaskOrFail;
  @JsonKey(ignore: true)
  $TaskRecievedCopyWith<TaskRecieved> get copyWith =>
      throw _privateConstructorUsedError;
}

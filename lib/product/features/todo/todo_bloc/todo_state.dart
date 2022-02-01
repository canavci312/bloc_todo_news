part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loadInProgress() = _LoadInProgress;
    const factory TodoState.loadSuccess(List<TodoTask> todoTasks) = _LoadSuccess;
  const factory TodoState.error(TodoFailure todoFailure) = _Error;

}
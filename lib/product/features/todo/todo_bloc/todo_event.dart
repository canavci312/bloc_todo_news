part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.addTask(TodoTask task) = AddTask;
  const factory TodoEvent.updateTask(TodoTask task) = UpdateTask;
  const factory TodoEvent.removeTask(TodoTask task) = RemoveTask;
  const factory TodoEvent.subscribe() = FetchTask;
    const factory TodoEvent.taskRecieved(Either<TodoFailure, List<TodoTask>> todoTaskOrFail) = TaskRecieved;

}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/task.dart';
import '../service/todo_failure.dart';
import '../service/todo_firebase_service.dart';
import 'package:logger/logger.dart';

part 'todo_state.dart';
part 'todo_event.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ToDoFirebaseService firebaseService;
  StreamSubscription<Either<TodoFailure, List<TodoTask>>>? subscription;
  TodoBloc(this.firebaseService) : super(const TodoState.initial()) {
    on<FetchTask>(_fetchTask);
    on<UpdateTask>(_updateTask);
    on<AddTask>(_addTask);
    on<RemoveTask>(_removeTask);
    on<TaskRecieved>(_taskRecieved);
  }
  FutureOr<void> _fetchTask(FetchTask event, Emitter<TodoState> emit) async {
    emit(const TodoState.loadInProgress());
    subscription = firebaseService.streamTasks().listen((tasks) {
      add(TodoEvent.taskRecieved(tasks));
    });
  }

  @override
  Future<void> close() async {
    subscription?.cancel();
    super.close();
  }

  FutureOr<void> _updateTask(UpdateTask event, Emitter<TodoState> emit) async {
    Logger().d("update task");
    final result = await firebaseService.updateTask(event.task);
    result.fold((l) => emit(TodoState.error(l)), (r) => null);
  }

  FutureOr<void> _addTask(AddTask event, Emitter<TodoState> emit) async {
    final result = await firebaseService.addTask(event.task);
    result.fold((l) => emit(TodoState.error(l)), (r) => null);
  }

  FutureOr<void> _removeTask(RemoveTask event, Emitter<TodoState> emit) async {
    final result = await firebaseService.removeTask(event.task);
    result.fold((l) => emit(TodoState.error(l)), (r) => null);
  }

  FutureOr<void> _taskRecieved(TaskRecieved event, Emitter<TodoState> emit) {
    emit(event.todoTaskOrFail.fold(TodoState.error, TodoState.loadSuccess));
  }
}

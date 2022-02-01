import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import '../model/task.dart';
import 'todo_failure.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

class ToDoFirebaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<Either<TodoFailure, List<TodoTask>>> streamTasks() async* {
    var a = _firebaseFirestore
        .collection('tasks')
        .snapshots()
        .map(
          (snapshot) => right<TodoFailure, List<TodoTask>>(
            snapshot.docs.map((doc) => TodoTask.fromMap(doc.data())).toList(),
          ),
        )
        .onErrorReturnWith((e, stk) {
      Logger().e(e);

      Logger().e(stk);
      if (e is PlatformException) {
        return left<TodoFailure, List<TodoTask>>(
            const TodoFailure.unexpected());
      } else {
        return left<TodoFailure, List<TodoTask>>(
            const TodoFailure.unexpected());
      }
    });
    yield* a;
  }

  Future<Either<TodoFailure, TodoTask>> addTask(TodoTask todoTask) async {
    try {
      await _firebaseFirestore
          .collection('tasks')
          .doc(todoTask.timestamp.toString())
          .set(todoTask.toMap());
      return right(todoTask);
    } catch (e) {
      return left(const TodoFailure.unexpected());
    }
  }

  Future<Either<TodoFailure, TodoTask>> removeTask(TodoTask todoTask) async {
    try {
      await _firebaseFirestore
          .collection('tasks')
          .doc(todoTask.timestamp.toString())
          .delete();
      return right(todoTask);
    } catch (e) {
      return left(const TodoFailure.unexpected());
    }
  }

  Future<Either<TodoFailure, TodoTask>> updateTask(TodoTask todoTask) async {
    try {
      await _firebaseFirestore
          .collection('tasks')
          .doc(todoTask.timestamp.toString())
          .set(todoTask.toMap());
      return right(todoTask);
    } catch (e) {
      return left(const TodoFailure.unexpected());
    }
  }
}

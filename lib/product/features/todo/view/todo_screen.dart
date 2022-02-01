import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../locator.dart';
import '../model/task.dart';
import '../service/todo_firebase_service.dart';
import '../todo_bloc/todo_bloc.dart';
import 'todo_bottomsheet.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TodoBloc(getIt<ToDoFirebaseService>())
          ..add(const TodoEvent.subscribe()),
        child: const TodoView());
  }
}

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO TASK"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await _onFabPressed(context),
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const CircularProgressIndicator();
            },
            loadInProgress: () {
              return const CircularProgressIndicator();
            },
            loadSuccess: (tasks) {
              return tasks.isNotEmpty
                  ? ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TodoItem(tasks[index]);
                      },
                    )
                  : const Center(child: Text("No Tasks Added Yet"));
            },
            error: ((error) {
              return Text(error.toString());
            }),
          );
        },
      ),
    );
  }

  Future<void> _onFabPressed(BuildContext context) async {
    String newTaskTitle = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const TodoBottomSheet(
            "Add Task",
            "Add",
          ),
        ),
      ),
    );
    context.read<TodoBloc>().add(
          TodoEvent.addTask(
            TodoTask(
                name: newTaskTitle,
                timestamp: DateTime.now().millisecondsSinceEpoch),
          ),
        );
  }
}

class TodoItem extends StatelessWidget {
  final TodoTask task;
  const TodoItem(this.task, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await onTodoEdit(context);
      },
      child: Dismissible(
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              context.read<TodoBloc>().add(TodoEvent.removeTask(task));
            }
          },
          background: Container(color: Colors.red),
          key: UniqueKey(),
          child: ListTile(title: Text(task.name))),
    );
  }

  Future<void> onTodoEdit(BuildContext context) async {
    String newTaskTitle = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: TodoBottomSheet(
                "Update Task",
                "Update",
                initialName: task.name,
              ),
            )));
    context
        .read<TodoBloc>()
        .add(TodoEvent.updateTask(task.copyWith(name: newTaskTitle)));
  }
}

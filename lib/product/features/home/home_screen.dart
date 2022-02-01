import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../router/router.gr.dart';
import '../../../core/core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morphosis Tasks'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                AutoRouter.of(context).push(const ArticleListScreen());
              },
              child: SizedBox(
                width: context.width,
                child: const Text(
                  'Task 1',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                AutoRouter.of(context).push(const TodoScreen());
              },
              child: SizedBox(
                width: context.width,
                child: const Text(
                  'Task 2',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

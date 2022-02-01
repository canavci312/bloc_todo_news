import 'package:flutter/material.dart';
import '../article_bloc/article_bloc.dart';
import 'package:provider/src/provider.dart';

class ArticleSearchInput extends StatefulWidget {
 const ArticleSearchInput({Key? key}) : super(key: key);

  @override
  State<ArticleSearchInput> createState() => _ArticleSearchInputState();
}

class _ArticleSearchInputState extends State<ArticleSearchInput> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.search),
        hintText: "Search by title",
        border: InputBorder.none,
      ),
      controller: _controller,
      enableSuggestions: false,
      onChanged: (value) {
        context.read<ArticleBloc>().add(ArticleEvent.filter(value));
      },
    );
  }
}

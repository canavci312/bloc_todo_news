import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/loading_progress.dart';
import '../../../../locator.dart';
import '../../../../core/extensions/api_failure.dart';
import '../article_bloc/article_bloc.dart';
import '../model/article.dart';
import '../service/news_service/api_failure.dart';
import '../service/news_api_repository.dart';
import 'article_search_input.dart';

class ArticleListScreen extends StatefulWidget {
  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  State<ArticleListScreen> createState() => _ArticleListScreenState();
}

class _ArticleListScreenState extends State<ArticleListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ArticleBloc(getIt<NewsRepository>())
          ..add(const ArticleEvent.fetch()),
        child: const ArticleListView());
  }
}

class ArticleListView extends StatelessWidget {
  const ArticleListView({Key? key}) : super(key: key);

  final String title = 'Today\'s Headlines';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const LoadingProgress();
            },
            loadInProgress: () {
              return const LoadingProgress();
            },
            loaded: (articles) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ArticleSearchInput(),
                  articles.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: articles.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ArticleTile(articles[index]);
                            },
                          ),
                        )
                      : const Text("No result :("),
                ],
              );
            },
            error: (ApiFailure apiFailure) => Text(apiFailure.xBuildError()),
          );
        },
      ),
    );
  }
}

class ArticleTile extends StatelessWidget {
  final Article article;
  const ArticleTile(
    this.article, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(article.title ?? "No title"),
    );
  }
}

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/article.dart';
import '../service/news_service/api_failure.dart';
import '../service/news_api_repository.dart';

part 'article_state.dart';
part 'article_event.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final NewsRepository _repository;
  List<Article> articles = [];
  ArticleBloc(this._repository) : super(const ArticleState.initial()) {
    on<ArticleEvent>(eventToState);
  }

  FutureOr<void> eventToState(
      ArticleEvent event, Emitter<ArticleState> emit) async {
    await event.when(
      fetch: () async {
        emit(const ArticleState.loadInProgress());
        Either<ApiFailure, List<Article>> either = await _repository.fetch();
        either.fold(
          (l) => (emit(
            ArticleState.error(l),
          )),
          (r) {
            articles = r;
            emit(
              ArticleState.loaded(r),
            );
          },
        );
      },
      filter: (value) {
        if (articles.isNotEmpty) {
          var filteredArticles = articles
              .where(
                (element) => (element.title!.toLowerCase().contains(
                      value.toLowerCase(),
                    )),
              )
              .toList();
          emit(ArticleState.loaded(filteredArticles));
        }
      },
    );
  }
}

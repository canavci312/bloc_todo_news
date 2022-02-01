part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loadInProgress() = _LoadInProgress;
  const factory ArticleState.loaded(List<Article> articles) = _Loaded;
  const factory ArticleState.error(ApiFailure apiFailure) = _Error;

}

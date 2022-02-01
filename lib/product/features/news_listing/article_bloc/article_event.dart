part of 'article_bloc.dart';

@freezed
class ArticleEvent with _$ArticleEvent {
  const factory ArticleEvent.fetch() = ArticleEventFetch;
    const factory ArticleEvent.filter(String value) = ArticleEventFilter;

}

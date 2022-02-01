import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_task/product/features/news_listing/article_bloc/article_bloc.dart';
import 'package:interview_task/product/features/news_listing/model/article.dart';
import 'package:interview_task/product/features/news_listing/model/source.dart';
import 'package:interview_task/product/features/news_listing/service/news_api_repository.dart';
import 'package:interview_task/product/features/news_listing/service/news_service/api_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:test/test.dart';

import 'articles_listing_test.mocks.dart';

@GenerateMocks([NewsRepository])
void main() {
  group('Article Bloc', () {
    late MockNewsRepository newsRepository;
    late List<Article> mockArticleList;
    late Either<ApiFailure, List<Article>> myEither;
    setUp(() {
      newsRepository = MockNewsRepository();
      mockArticleList = [
        Article(
            source:
                Source(id: "the-washington-post", name: "The Washington Post"),
            author: "John Wagner",
            title:
                "Georgia prosecutor asks FBI for security assistance following Trump comments at Texas rally - The Washington Post",
            description:
                "In a letter Sunday, Fulton County District Attorney Fani Willis pointed to Trump's characterization of prosecutors as “racist” and “mentally sick.”",
            url:
                "https://www.washingtonpost.com/politics/2022/01/31/willis-fbi-help-trump-comments/",
            urlToImage:
                "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/2INRWAECT4I6ZFI4DYGMG4R6KM.jpg&w=1440",
            publishedAt: "2022-01-31T16:27:23Z",
            content:
                "Security concerns were escalated this weekend by the rhetoric of former President Trump at a public event in Conroe, Texas that was broadcast and covered by national media outlets and shared widely o… [+2539 chars]")
      ];
      myEither = Right(mockArticleList);
    });

    blocTest<ArticleBloc, ArticleState>(
      'when emits article,  repository returns successfully.',
      build: () {
        when(newsRepository.fetch())
            .thenAnswer((_)async=> (myEither));
        return ArticleBloc(newsRepository);
      },
      act: (bloc) => bloc.add(const ArticleEvent.fetch()),
      expect: () =>  <ArticleState>[
        const ArticleState.loadInProgress(),
        ArticleState.loaded(mockArticleList)
      ],
    );
  });
}

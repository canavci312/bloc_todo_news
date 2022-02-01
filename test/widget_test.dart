import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interview_task/product/features/news_listing/article_bloc/article_bloc.dart';
import 'package:interview_task/product/features/news_listing/model/article.dart';
import 'package:interview_task/product/features/news_listing/model/source.dart';
import 'package:interview_task/product/features/news_listing/view/article_list_screen.dart';
import 'package:mocktail/mocktail.dart';

class ArticleBlocMock extends MockBloc<ArticleEvent, ArticleState>
    implements ArticleBloc {}

void main() {
  late ArticleBlocMock testBloc;
  late List<Article> mockArticleList;

  setUp(() {
    testBloc = ArticleBlocMock();
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
    when(() => testBloc.state).thenReturn(ArticleState.loaded(mockArticleList));
  });
  testWidgets('When fetched, show title', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: Scaffold(
        body: BlocProvider<ArticleBloc>(
            create: (c) => testBloc..add(const ArticleEvent.fetch()),
            child: const ArticleListView()),
      )),
    );
    await tester.pumpAndSettle();
    expect(
        find.text(
            'Georgia prosecutor asks FBI for security assistance following Trump comments at Texas rally - The Washington Post'),
        findsOneWidget);
  });
}

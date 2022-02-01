import 'package:hive/hive.dart';
import '../../../../../core/service/hive_service.dart';
import '../../../../constants/hive_constants.dart';
import '../../model/article.dart';
import '../../model/source.dart';
import 'package:logger/logger.dart';

class NewsCacheService extends ICacheManager<Article> {
  
  final String key;
  NewsCacheService(this.key) : super(key);

  @override
  Future<void> addItems(List<Article> items) async {
    try {
      await box?.addAll(items);
    } catch (e) {
      Logger().e(e);
    }
  }

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(HiveTypeConstants.articleTypeId)) {
      Hive.registerAdapter(ArticleAdapter());
      Hive.registerAdapter(SourceAdapter());
    }
  }

  @override
  List<Article>? getValues() {
    try {
      Logger().d(box?.values.first.toJson());
      return box?.values.toList();
    } catch (e) {
      Logger().e(e);
    }
  }

  close() {
    Hive.box(key).close();
  }
}

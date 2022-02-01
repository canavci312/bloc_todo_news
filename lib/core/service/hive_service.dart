import 'package:hive/hive.dart';

abstract class ICacheManager<T> {
  final String key;
  Box<T>? box;

  ICacheManager(this.key);
  Future<void> init() async {
    registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox<T>(key);
    }
  }

  void registerAdapters();

  Future<void> clearAll() async {
    await box?.clear();
  }
  Future<void> addItems(List<T> items);
  List<T>? getValues();


}

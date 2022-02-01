abstract class IBaseModel<T> {
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}

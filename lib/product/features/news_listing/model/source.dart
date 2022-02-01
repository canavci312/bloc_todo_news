import 'package:hive/hive.dart';
import '../../../../core/model/base_model.dart';
import '../../../constants/hive_constants.dart';
part 'source.g.dart';

@HiveType(typeId: HiveTypeConstants.sourceTypeId)
class Source extends IBaseModel<Source> {
  @HiveField(1)
  String? id;
  @HiveField(2)
  String? name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }

  @override
  Source fromJson(Map<String, dynamic> json) {
    return Source.fromJson(json);
  }
}

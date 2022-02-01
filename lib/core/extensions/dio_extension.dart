import 'dart:convert';

import '../model/base_model.dart';
import '../service/dio_service.dart';

extension DioHelperExtension on IDioHelper {
  // #region GetResponseResult
  dynamic getResponseResult<T extends IBaseModel, R>(
      dynamic data, T parserModel, bool isJsonDecode) {

    dynamic model;

    if (isJsonDecode) {
      model = parseModel<R, T>(jsonDecode(data), parserModel);
    } else {
      model = parseModel<R, T>(data, parserModel);
    }

    return model;
  }
  // #endregion
}
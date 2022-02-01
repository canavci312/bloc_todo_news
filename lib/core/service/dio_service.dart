import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '../extensions/dio_extension.dart';
import '../model/base_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String getMethod = 'GET';
const String postMethod = 'POST';
const String patchMethod = 'PATCH';

abstract class IDioHelper {
  Future<R> dioGet<T extends IBaseModel, R>(
    String path, {
    required T parseModel,
    bool isJsonDecode = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  });
}

R parseModel<R, T extends IBaseModel>(dynamic responseBody, T model) {
  if (responseBody is List) {
    return responseBody.map((data) => model.fromJson(data)).cast<T>().toList()
        as R;
  } else if (responseBody is Map) {
    try {
      if (responseBody.length > 1) {
        var list = <T>[];
        responseBody.forEach((key, value) {
          list.add(model.fromJson(value));
        });

        return list as R;
      } else {
        return model.fromJson(Map.from(responseBody)) as R;
      }
    } catch (_) {
      return model.fromJson(Map.from(responseBody)) as R;
    }
  } else {
    return responseBody as R;
  }
}

class DioHelper with DioMixin implements Dio, IDioHelper {
  // #region Settings
  DioHelper() {
    options = BaseOptions(
      connectTimeout: 60000,
      receiveTimeout: 60000,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      headers: {},
    );
    httpClientAdapter = DefaultHttpClientAdapter();
    interceptors.add(PrettyDioLogger());
  }
  // #endregion

  // ************************** **************************

  @override
  Future<R> dioGet<T extends IBaseModel, R>(
    String path, {
    required T parseModel,
    bool isJsonDecode = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode! < HttpStatus.ok ||
          response.statusCode! > HttpStatus.badRequest) {
        throw Exception('GET | ${response.data}');
      }

      return getResponseResult<T, R>(response.data, parseModel, isJsonDecode);
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException('Unable to process the data');
    } catch (e) {
      rethrow;
    }
  }
  // #endregion
}

import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_softbook/services/base/BaseRepository.dart';


class ApiController extends BaseRepository {
  /// GetAppInitData Api
  /*Future<GetAppInitDataModel> getAppInitData() async {
    ApiResponse apiResponse =await apiHitter.getApiResponse(ApiEndpoint.getAppInitData);
    {
      try {
        print(apiResponse);
        if (apiResponse.status) {
          if (apiResponse.response.data != null) {
            final passEntity =
                GetAppInitDataModel.fromJson(apiResponse.response.data);
            return passEntity;
          } else
            return GetAppInitDataModel(
                code: apiResponse.responseCode, message: apiResponse.msg);
        } else {
          if (apiResponse.responseCode == 200)
            return GetAppInitDataModel(
                code: apiResponse.responseCode, message: apiResponse.msg);
          else
            return GetAppInitDataModel(
              code: apiResponse.responseCode,
              message: apiResponse.msg,
            );
        }
      } catch (error) {
        return GetAppInitDataModel(
            code: apiResponse.response.statusCode!, message: apiResponse.msg);
      }
    }
  }*/
  ///get countries
}

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wash_icareer/core/networking/api_constans.dart';
import 'package:wash_icareer/core/networking/api_error_handler.dart';
import 'package:wash_icareer/core/networking/api_result.dart';
import 'package:wash_icareer/core/utils/app_constants.dart';
import 'package:wash_icareer/core/utils/local_storage.dart';
import 'package:wash_icareer/features/register/data/models/register_requires_model.dart';

@lazySingleton
class RegisterRepo {
  final Dio _dio;
  final LocalStorage _localStorage;

  RegisterRepo(this._dio, this._localStorage);

  Future<ApiResult<dynamic>> register(RegisterRequestModel registerModel) async {
    try {
      final response = await _dio.post(
        ApiConstants.register,
        data: registerModel.toJson(),
      );
      saveToken(response.data['data']['token']);
      return Success(response.data['message']);
    } on DioException catch (e) {
      return Error(ApiErrorHandler.handle(e).message);
    }
  }

  void saveToken(String token) {
    _localStorage.setString(key: AppConstants.token, value: token);
  }
}
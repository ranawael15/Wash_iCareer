import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wash_icareer/core/networking/api_constans.dart';
import 'package:wash_icareer/core/networking/api_error_handler.dart';
import 'package:wash_icareer/core/networking/api_result.dart';
import 'package:wash_icareer/features/register/data/models/register_requires_model.dart';

class RegisterRepo {
  final Dio _dio;
  RegisterRepo(this._dio);

  Future<ApiResult<dynamic>> register(
    RegisterRequestModel registerModel,
  ) async {
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

  saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', token);
  }
}

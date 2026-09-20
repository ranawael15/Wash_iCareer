import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:wash_icareer/core/networking/dio_factory.dart';
import 'package:wash_icareer/features/register/data/repo/register_repo.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<Dio>(() => DioFactory.getDio());

  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
}

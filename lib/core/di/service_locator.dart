

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wash_icareer/core/di/service_locator.config.dart';
import 'package:wash_icareer/core/networking/dio_factory.dart';
import 'package:wash_icareer/core/utils/local_storage.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => await getIt.init();

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio dio(LocalStorage localStorage) => DioFactory.getDio(localStorage);
}
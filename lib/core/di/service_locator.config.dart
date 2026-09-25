// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/register/data/repo/register_repo.dart' as _i855;
import '../../features/register/presentation/cubit/register_cubit.dart'
    as _i266;
import '../utils/local_storage.dart' as _i586;
import 'service_locator.dart' as _i105;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i586.LocalStorage>(
      () => _i586.LocalStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.dio(gh<_i586.LocalStorage>()));
    gh.lazySingleton<_i855.RegisterRepo>(
      () => _i855.RegisterRepo(gh<_i361.Dio>(), gh<_i586.LocalStorage>()),
    );
    gh.factory<_i266.RegisterCubit>(
      () => _i266.RegisterCubit(gh<_i855.RegisterRepo>()),
    );
    return this;
  }
}

class _$AppModule extends _i105.AppModule {}

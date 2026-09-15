import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/register/data/repo/register_repo.dart';

GetIt getIt = GetIt.instance;


Future<void> setupGetIt()async{

  Dio dio = Dio();

  getIt.registerLazySingleton<RegisterRepo>(()=>RegisterRepo(getIt()));

}
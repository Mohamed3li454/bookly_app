import 'package:bookly_app/Features/home/data/repos/home_repo_implements.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplements>(
    HomeRepoImplements(
      getIt.get<ApiService>(),
    ),
  );
}

import 'package:dio/dio.dart';
import 'package:flutter_application_1/bloc/profile_bloc/profile_bloc.dart';
import 'package:flutter_application_1/domain/usecases/get_user_reviews.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'data/datasources/user_reviews_local.dart';
import 'data/datasources/user_reviews_remote.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/user_profile_repository.dart';
import 'domain/usecases/set_user_reviews.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  ///Bloc
  getIt.registerFactory(() => ProfileBloc(getUserListOfReviews: getIt()));

  ///usercases
  getIt.registerLazySingleton(() => GetUserReviews(getIt()));
  // getIt.registerLazySingleton(() => SetUserReviews(getIt()));

  getIt.registerLazySingleton<UserReviewRepository>(
      () => UserReviewRepositoryImpl(
            localDataSource: getIt(),
            connectionChecker: getIt(),
            remoteDataSource: getIt(),
          ));
  getIt.registerLazySingleton(
      () => Dio(BaseOptions(connectTimeout: 30000, receiveTimeout: 30000)));
  getIt.registerLazySingleton<UserReviewsRemoteData>(
      () => UserReviewsRemoteDataImpl(httpClient: getIt()));
  getIt.registerLazySingleton(() => InternetConnectionChecker());

  /// [TODO]
  // getIt.registerLazySingleton<UserReviewsLocalData>(
  //     () => UserReviewsDataImpl(sharedPreferences: getIt()));
}

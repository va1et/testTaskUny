import 'package:flutter_application_1/common/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/data/datasources/user_reviews_local.dart';
import 'package:flutter_application_1/data/models/user_reviews_model.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';
import 'package:flutter_application_1/domain/repositories/user_profile_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../common/errors/exceptions.dart';
import '../datasources/user_reviews_remote.dart';

class UserReviewRepositoryImpl implements UserReviewRepository {
  final UserReviewsLocalData localDataSource;
  final UserReviewsRemoteData remoteDataSource;
  final InternetConnectionChecker connectionChecker;
  UserReviewRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.connectionChecker});

  @override
  Future<Either<Failure, DataUserReviewModel>> getUserListOfReviews() async {
    if (await connectionChecker.hasConnection) {
      try {
        final DataUserReviewModel reviews = await remoteDataSource.getReviews();

        try {
          // final localReviews = await localDataSource.getUserReviewsFromCache();
          //localDataSource.setScheduleToCache(localSchedule);
        } on CacheException {
          localDataSource.setUserReviewsToCache(reviews);
        }
        return Right(reviews);
      } on ServerException {
        // If we have a ServerException, but we have an internet connection,
        // we can try to get the schedule from the local storage

        return const Left(ServerFailure());
      }
    } else {
      return const Left(ServerFailure());
    }
  }

  Future<Either<Failure, DataUserReviewValue>> _tryGetRemoteReviews() async {
    if (await connectionChecker.hasConnection) {
      try {
        final DataUserReviewModel reviews = await remoteDataSource.getReviews();

        try {
          // final localReviews = await localDataSource.getUserReviewsFromCache();
          //localDataSource.setScheduleToCache(localSchedule);
        } on CacheException {
          localDataSource.setUserReviewsToCache(reviews);
        }
        return Right(reviews);
      } on ServerException {
        // If we have a ServerException, but we have an internet connection,
        // we can try to get the schedule from the local storage

        return const Left(ServerFailure());
      }
    } else {
      return const Left(ServerFailure());
    }
  }

  // @override
  // Future<void> setUserReview(UserReview reviews) async {
  //   localDataSource.setUserReviewsToCache(UserReviewModel(
  //       rating: reviews.rating,
  //       reviewtext: reviews.reviewtext,
  //       name: reviews.name));
  // }
}

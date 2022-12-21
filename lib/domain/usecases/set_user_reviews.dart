import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../../common/errors/failures.dart';
import '../models/User_review.dart';
import '../repositories/user_profile_repository.dart';

// class SetUserReviews extends UseCase<void, SetUserReviewsParams> {
//   final UserReviewRepository userReviewRepository;

//   SetUserReviews(this.userReviewRepository);

//   @override
//   Future<Either<Failure, void>> call(SetUserReviewsParams params) async {
//     return Right(userReviewRepository.setUserReview(params.review));
//   }
// }

// class SetUserReviewsParams extends Equatable {
//   final UserReview review;

//   const SetUserReviewsParams(this.review);

//   @override
//   List<Object?> get props => [review];
// }

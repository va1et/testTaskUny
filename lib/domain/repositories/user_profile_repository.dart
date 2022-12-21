import 'package:dartz/dartz.dart';

import '../../common/errors/failures.dart';
import '../models/User_review.dart';

abstract class UserReviewRepository {
  Future<Either<Failure, DataUserReviewValue>> getUserListOfReviews();
  // Future<void> setUserReview(UserReview review);
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';
import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../../common/errors/failures.dart';
import '../repositories/user_profile_repository.dart';

class GetUserReviews extends UseCase<DataUserReviewValue, void> {
  final UserReviewRepository userRepository;

  GetUserReviews(this.userRepository);
  @override
  Future<Either<Failure, DataUserReviewValue>> call([params]) async {
    return await userRepository.getUserListOfReviews();
  }
}

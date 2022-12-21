import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../common/errors/failures.dart';
import '../../domain/models/User_review.dart';

import '../../domain/usecases/get_user_reviews.dart';
import '../../domain/usecases/set_user_reviews.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserReviews getUserListOfReviews;
  // final SetUserReviews setUserReviews;
  // List<UserReview> reviews = [
  //   UserReview(rating: 5, reviewtext: "reviewtext", name: "Yandex"),
  //   UserReview(rating: 4, reviewtext: "aaaa", name: "Sber"),
  // ];
  ProfileBloc({required this.getUserListOfReviews}) : super(ProfileInitial()) {
    // on<ProfileAddReviewEvent>(_profileAddReviewEvent);
    on<ProfileOpenEvent>(_onProfileOpenEvent);
  }
  void _onProfileOpenEvent(
    ProfileOpenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    print("AAAA");
    final userreview = await getUserListOfReviews();
    emit(userreview.fold(
        (failureRemote) =>
            ProfileLoadError(errorMessage: _mapFailureToMessage(failureRemote)),
        (reviewsFromRemote) => ProfileReviewLoaded(
              reviews: reviewsFromRemote,
            )));
  }

  // void _profileAddReviewEvent(
  //     ProfileAddReviewEvent event, Emitter<ProfileState> emit) async {
  //   // await setUserReviews(SetUserReviewsParams(event.review));
  //   final userreview = await getUserListOfReviews();
  //   emit(ProfileReviewLoaded(reviews: userreview));
  // }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return 'Произошла ошибка при загрузке данных. Пожалуйста, проверьте ваше интернет-соединение';
    case CacheFailure:
      return 'Произошла ошибка при загрузке данных';
    default:
      return 'Unexpected Error';
  }
}

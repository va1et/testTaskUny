import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../common/errors/failures.dart';
import '../../domain/models/User_review.dart';

import '../../domain/models/chips.dart';
import '../../domain/usecases/get_user_reviews.dart';
import '../../domain/usecases/set_user_reviews.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserReviews getUserListOfReviews;
  ProfileBloc({required this.getUserListOfReviews}) : super(ProfileInitial()) {
    // on<ProfileAddReviewEvent>(_profileAddReviewEvent);
    on<ProfileOpenEvent>(_onProfileOpenEvent);
  }
  void _onProfileOpenEvent(
    ProfileOpenEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    final userreview = await getUserListOfReviews();

    emit(userreview.fold(
        (failure) =>
            ProfileLoadError(errorMessage: _mapFailureToMessage(failure)),
        (reviewsremote) {
      return ProfileReviewLoaded(reviews: reviewsremote);
    }));
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
}

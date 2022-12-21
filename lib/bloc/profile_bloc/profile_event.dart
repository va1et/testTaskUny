part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
  @override
  List<Object> get props => [];
}

class ProfileOpenEvent extends ProfileEvent {}

class ProfileAddReviewEvent extends ProfileEvent {
  final DataUserReviewValue review;
  const ProfileAddReviewEvent({required this.review});

  @override
  List<Object> get props => [review];
}

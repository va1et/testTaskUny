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

class ProfileIncrementUserChips extends ProfileEvent {
  final UserChipsData chips;
  const ProfileIncrementUserChips({required this.chips});

  @override
  List<Object> get props => [chips];
}

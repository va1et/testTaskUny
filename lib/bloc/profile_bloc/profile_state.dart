part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoadError extends ProfileState {
  final String errorMessage;

  const ProfileLoadError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class ProfileReviewLoaded extends ProfileState {
  final DataUserReviewValue reviews;

  const ProfileReviewLoaded({required this.reviews});

  @override
  List<Object> get props => [reviews];
}

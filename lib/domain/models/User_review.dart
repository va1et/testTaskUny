import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/domain/models/chips.dart';

class UserReview extends Equatable {
  final int id;

  final String text;
  final String name;
  final String createdat;
  final String updatedat;

  const UserReview({
    required this.id,
    required this.text,
    required this.name,
    required this.createdat,
    required this.updatedat,
  });

  @override
  List<Object?> get props => [id, text, name, createdat, updatedat];
}

class DataUserReviewValue extends Equatable {
  const DataUserReviewValue({
    required this.reviews,
  });

  final List<UserReview> reviews;

  @override
  List<Object?> get props => [reviews];
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';

class UserReviewModel extends UserReview {
  const UserReviewModel({
    required int id,
    required String text,
    required String name,
    required String createdat,
    required String updatedat,
  }) : super(
            id: id,
            text: text,
            name: name,
            createdat: createdat,
            updatedat: updatedat);

  factory UserReviewModel.fromRawJson(String str) =>
      UserReviewModel.fromJson(jsonDecode(str));

  String toRawJson() => json.encode(toJson());

  factory UserReviewModel.fromJson(Map<String, dynamic> json) =>
      UserReviewModel(
        id: json["id"],
        text: json["text"],
        name: json["name"],
        createdat: json["created_at"],
        updatedat: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "name": name,
        "created_at": createdat,
        "updated_at": updatedat
      };
}

class DataUserReviewModel extends DataUserReviewValue {
  const DataUserReviewModel({required this.reviews}) : super(reviews: reviews);

  // ignore: annotate_overrides, overridden_fields
  final List<UserReviewModel> reviews;

  factory DataUserReviewModel.fromRawJson(String str) =>
      DataUserReviewModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataUserReviewModel.fromJson(Map<String, dynamic> json) =>
      DataUserReviewModel(
          reviews: List<UserReviewModel>.from(
              json["data"].map((x) => UserReviewModel.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}

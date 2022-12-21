import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/models/user_reviews_model.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';

import '../../common/errors/exceptions.dart';

abstract class UserReviewsRemoteData {
  Future<DataUserReviewModel> getReviews();
}

class UserReviewsRemoteDataImpl implements UserReviewsRemoteData {
  static const _apiUrl = 'http://224635.fornex.cloud/api/comments';
  final Dio httpClient;
  UserReviewsRemoteDataImpl({required this.httpClient});
  @override
  Future<DataUserReviewModel> getReviews() async {
    try {
      final response = await httpClient.get(_apiUrl);
      print(response.statusCode);
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        print(data);
        //myLongPrint(json.encode(data));
        return DataUserReviewModel.fromJson(data);
      } else {
        throw ServerException('Response status code is $response.statusCode');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}

// import 'package:shared_preferences/shared_preferences.dart';

// import '../../common/errors/exceptions.dart';


// abstract class UserChipsLocalData {
//   Future<void> setUserReviewsToCache(DataUserReviewModel reviews);
//   Future<DataUserReviewModel> getUserReviewsFromCache();
// }

// class UserReviewsDataImpl implements UserReviewsLocalData {
//   final SharedPreferences sharedPreferences;

//   UserReviewsDataImpl({required this.sharedPreferences});

//   @override
//   Future<DataUserReviewModel> getUserReviewsFromCache() async {
//     final jsonReviewList = sharedPreferences.getString('data');

//     throw CacheException('The list of review is not set');
//   }

//   @override
//   Future<void> setUserReviewsToCache(DataUserReviewModel reviews) {
//     return sharedPreferences.setString('data', reviews.toRawJson());
//   }
// }

import 'package:shared_preferences/shared_preferences.dart';

import '../../common/errors/exceptions.dart';
import '../models/chip_model.dart';

abstract class UserChipsLocalData {
  Future<void> setUserChipsToCache(DataUserChipModel chips);
  Future<DataUserChipModel> getUserChipsFromCache();
}

class UserChipsDataImpl implements UserChipsLocalData {
  final SharedPreferences sharedPreferences;

  UserChipsDataImpl({required this.sharedPreferences});

  @override
  Future<DataUserChipModel> getUserChipsFromCache() async {
    final jsonChipsList = sharedPreferences.getString('chips');

    throw CacheException('The list of chips is not set');
  }

  @override
  Future<void> setUserChipsToCache(DataUserChipModel chips) {
    return sharedPreferences.setString('chips', chips.toRawJson());
  }
}

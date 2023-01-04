import 'package:flutter_application_1/common/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/data/datasources/user_reviews_local.dart';
import 'package:flutter_application_1/data/models/user_reviews_model.dart';
import 'package:flutter_application_1/domain/models/User_review.dart';
import 'package:flutter_application_1/domain/models/chips.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../common/errors/exceptions.dart';
import '../../domain/repositories/user_chips_repository.dart';
import '../datasources/user_chips_local.dart';
import '../datasources/user_reviews_remote.dart';
import '../models/chip_model.dart';

class UserChipRepositoryImpl implements UserChipsRepository {
  final UserChipsLocalData localDataSource;
  UserChipRepositoryImpl({required this.localDataSource});

  @override
  Future<DataUserChipModel> getUserListofChips() async {
    try {
      final DataUserChipModel chips =
          await localDataSource.getUserChipsFromCache();
      return chips;
    } on CacheException {
      DataUserChipModel newchips =
          DataUserChipModel(chips: [ChipModel(id: 1, name: "a", amount: 1)]);
      localDataSource.setUserChipsToCache(newchips);
      return newchips;
    }
  }

  @override
  Future<void> addNewUserChip(int id, String name, int amount) async {
    final DataUserChipModel chips =
        await localDataSource.getUserChipsFromCache();
    bool find = false;
    for (int i = 0; i < chips.chips.length; i++) {
      // ignore: unrelated_type_equality_checks
      if (id == chips.chips[i].id) {
        find = true;
      }
    }
    if (!find) {
      chips.chips.add(ChipModel(id: id, name: name, amount: amount));
    }
    localDataSource.setUserChipsToCache(chips);
  }

  @override
  Future<void> incrementUserChip(int id, int amount) async {
    final DataUserChipModel chips =
        await localDataSource.getUserChipsFromCache();
    for (int i = 0; i < chips.chips.length; i++) {
      // ignore: unrelated_type_equality_checks
      if (id == chips.chips[i].id) {
        chips.chips[i].amount = amount;
      }
    }
  }
}

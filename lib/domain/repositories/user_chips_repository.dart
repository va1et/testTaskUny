import 'package:dartz/dartz.dart';

import '../../common/errors/failures.dart';
import '../models/chips.dart';

abstract class UserChipsRepository {
  Future<UserChipsData> getUserListofChips();
  Future<void> incrementUserChip(int id, int amount);
  Future<void> addNewUserChip(int id, String name, int amount);
}

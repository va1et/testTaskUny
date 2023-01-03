import 'package:dartz/dartz.dart';

import '../../common/errors/failures.dart';
import '../models/chips.dart';

abstract class UserChipsRepository {
  Future<Either<Failure, UserChipsData>> getUserListofChips();
  Future<void> setUserChips(int id, int amount);
}

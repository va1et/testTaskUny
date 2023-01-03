import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../../common/errors/failures.dart';
import '../repositories/user_chips_repository.dart';

class SetUserChips extends UseCase<void, SetUserChipsParams> {
  final UserChipsRepository userchipsRepository;

  SetUserChips(this.userchipsRepository);

  @override
  Future<Either<Failure, void>> call(SetUserChipsParams params) async {
    return Right(userchipsRepository.setUserChips(params.id, params.amount));
  }
}

class SetUserChipsParams extends Equatable {
  final int id;
  final int amount;

  const SetUserChipsParams(this.id, this.amount);

  @override
  List<Object?> get props => [id, amount];
}

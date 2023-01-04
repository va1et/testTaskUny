import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../../common/errors/failures.dart';
import '../repositories/user_chips_repository.dart';

class IncrementUserChips extends UseCase<void, IncrementUserChipsParams> {
  final UserChipsRepository userchipsRepository;

  IncrementUserChips(this.userchipsRepository);

  @override
  Future<Either<Failure, void>> call(IncrementUserChipsParams params) async {
    return Right(
        userchipsRepository.incrementUserChip(params.id, params.amount));
  }
}

class IncrementUserChipsParams extends Equatable {
  final int id;
  final int amount;

  const IncrementUserChipsParams(this.id, this.amount);

  @override
  List<Object?> get props => [id, amount];
}

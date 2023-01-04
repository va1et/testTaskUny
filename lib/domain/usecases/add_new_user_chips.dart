import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../../common/errors/failures.dart';
import '../repositories/user_chips_repository.dart';

class AddNewUserChips extends UseCase<void, AddNewUserChipsParams> {
  final UserChipsRepository userchipsRepository;

  AddNewUserChips(this.userchipsRepository);

  @override
  Future<Either<Failure, void>> call(AddNewUserChipsParams params) async {
    return Right(userchipsRepository.addNewUserChip(
        params.id, params.name, params.amount));
  }
}

class AddNewUserChipsParams extends Equatable {
  final int id;
  final int amount;
  final String name;

  const AddNewUserChipsParams(this.id, this.name, this.amount);

  @override
  List<Object?> get props => [id, name, amount];
}

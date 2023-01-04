import 'package:flutter_application_1/domain/usecases/usecase.dart';

import '../models/chips.dart';
import '../repositories/user_chips_repository.dart';

class GetUserChips extends UseCaseRight<UserChipsData, void> {
  final UserChipsRepository userRepository;

  GetUserChips(this.userRepository);
  @override
  Future<UserChipsData> call([params]) async {
    return await userRepository.getUserListofChips();
  }
}

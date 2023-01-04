import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../common/errors/failures.dart';
import '../../domain/models/chips.dart';
import '../../domain/usecases/add_new_user_chips.dart';
import '../../domain/usecases/get_user_chips.dart';
import '../../domain/usecases/increment_user_chips.dart';

part 'chips_event.dart';
part 'chips_state.dart';

class ChipsBloc extends Bloc<ChipsEvent, ChipsState> {
  final GetUserChips getUserChips;
  final AddNewUserChips addNewUserChips;
  final IncrementUserChips incrementUserChips;

  ChipsBloc({
    required this.getUserChips,
    required this.addNewUserChips,
    required this.incrementUserChips,
  }) : super(ChipsInitial()) {
    // on<ProfileAddReviewEvent>(_profileAddReviewEvent);
    on<ChipsOpenEvent>(_onChipsOpenEvent);
    on<ChipsAddEvent>(_onChipsAddEvent);
    on<ChipsIncrementEvent>(_onChipsIncrementEvent);
  }
  void _onChipsOpenEvent(
    ChipsOpenEvent event,
    Emitter<ChipsState> emit,
  ) async {
    final userchips = await getUserChips();
    print(userchips);
    emit(ChipsLoaded(chips: userchips));
  }

  void _onChipsAddEvent(
    ChipsAddEvent event,
    Emitter<ChipsState> emit,
  ) async {
    final userchips = await getUserChips();

    emit(ChipsLoaded(chips: userchips));
  }

  void _onChipsIncrementEvent(
    ChipsIncrementEvent event,
    Emitter<ChipsState> emit,
  ) async {
    final userchips = await getUserChips();
    emit(ChipsLoaded(chips: userchips));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Произошла ошибка при загрузке данных. Пожалуйста, проверьте ваше интернет-соединение';
      case CacheFailure:
        return 'Произошла ошибка при загрузке данных';
      default:
        return 'Unexpected Error';
    }
  }
}

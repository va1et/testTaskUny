part of 'chips_bloc.dart';

abstract class ChipsEvent extends Equatable {
  const ChipsEvent();
  @override
  List<Object> get props => [];
}

class ChipsOpenEvent extends ChipsEvent {}

class ChipsAddEvent extends ChipsEvent {
  final UserChipsData chips;
  const ChipsAddEvent({required this.chips});

  @override
  List<Object> get props => [chips];
}

class ChipsIncrementEvent extends ChipsEvent {
  final UserChipsData chips;
  const ChipsIncrementEvent({required this.chips});

  @override
  List<Object> get props => [chips];
}

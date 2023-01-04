part of 'chips_bloc.dart';

abstract class ChipsState extends Equatable {
  const ChipsState();
  @override
  List<Object> get props => [];
}

class ChipsInitial extends ChipsState {}

class ChipsLoaded extends ChipsState {
  final UserChipsData chips;

  const ChipsLoaded({required this.chips});

  @override
  List<Object> get props => [chips];
}

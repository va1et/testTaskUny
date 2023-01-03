part of 'chips_cubit.dart';

abstract class ChipsUserState extends Equatable {
  const ChipsUserState({required this.floor, required this.building});
  final int floor;
  final int building;
  @override
  List<Object> get props => [floor, building];
}

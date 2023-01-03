import 'package:equatable/equatable.dart';

class ChipData {
  // an id is useful when deleting chip
  final String id;
  final String name;
  final int amount;
  const ChipData({required this.id, required this.name, required this.amount});
  @override
  List<Object?> get props => [
        id,
        name,
        amount,
      ];
}

class UserChipsData extends Equatable {
  const UserChipsData({required this.chips});
  final List<ChipData> chips;

  @override
  List<Object?> get props => [chips];
}

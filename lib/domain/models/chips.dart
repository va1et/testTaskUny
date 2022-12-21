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

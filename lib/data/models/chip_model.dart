import 'dart:convert';

import '../../domain/models/chips.dart';

class ChipModel extends ChipData {
  ChipModel({required id, required name, required amount})
      : super(id: id, name: name, amount: amount);
  factory ChipModel.fromRawJson(String str) =>
      ChipModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChipModel.fromJson(Map<String, dynamic> json) => ChipModel(
        id: json["id"],
        name: json["name"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "amount": amount,
      };
}

class DataUserChipModel extends UserChipsData {
  const DataUserChipModel({required this.chips}) : super(chips: chips);

  // ignore: annotate_overrides, overridden_fields
  final List<ChipModel> chips;

  factory DataUserChipModel.fromRawJson(String str) =>
      DataUserChipModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataUserChipModel.fromJson(Map<String, dynamic> json) =>
      DataUserChipModel(
          chips: List<ChipModel>.from(
              json["chips"].map((x) => ChipModel.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "chips": List<dynamic>.from(chips.map((x) => x.toJson())),
      };
}

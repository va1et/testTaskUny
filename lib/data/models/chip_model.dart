import 'dart:convert';

import '../../domain/models/chips.dart';

class ChipModel extends ChipData {
  const ChipModel({required id, required name, required amount})
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

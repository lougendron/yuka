import 'package:json_annotation/json_annotation.dart';

part 'produit_name.g.dart';

@JsonSerializable(explicitToJson: true)
class ProduitName {
  @JsonKey(name: 'name')
  final String title;

  @JsonKey(name: 'altName')
  final String subtitle;

  ProduitName({required this.title, required this.subtitle});

  factory ProduitName.fromJson(Map<String, dynamic> json) =>
      _$ProduitNameFromJson(json);

  Map<String, dynamic> toJson() => _$ProduitNameToJson(this);
}

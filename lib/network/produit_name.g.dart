// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produit_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProduitName _$ProduitNameFromJson(Map<String, dynamic> json) {
  return ProduitName(
    title: json['name'] as String,
    subtitle: json['altName'] as String,
  );
}

Map<String, dynamic> _$ProduitNameToJson(ProduitName instance) =>
    <String, dynamic>{
      'name': instance.title,
      'altName': instance.subtitle,
    };

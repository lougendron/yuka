// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    barcode: json['barcode'] as String,
    name: json['name'] as String?,
    altName: json['altName'] as String?,
    picture: json['picture'] as String?,
    quantity: json['quantity'] as String?,
    brands:
        (json['brands'] as List<dynamic>?)?.map((e) => e as String).toList(),
    manufacturingCountries: (json['manufacturingCountries'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'barcode': instance.barcode,
      'name': instance.name,
      'altName': instance.altName,
      'picture': instance.picture,
      'quantity': instance.quantity,
      'brands': instance.brands,
      'manufacturingCountries': instance.manufacturingCountries,
    };

NutritionFacts _$NutritionFactsFromJson(Map<String, dynamic> json) {
  return NutritionFacts(
    servingSize: json['servingSize'] as String,
    calories: json['calories'] == null
        ? null
        : Nutriment.fromJson(json['calories'] as Map<String, dynamic>),
    fat: json['fat'] == null
        ? null
        : Nutriment.fromJson(json['fat'] as Map<String, dynamic>),
    saturatedFat: json['saturatedFat'] == null
        ? null
        : Nutriment.fromJson(json['saturatedFat'] as Map<String, dynamic>),
    carbohydrate: json['carbohydrate'] == null
        ? null
        : Nutriment.fromJson(json['carbohydrate'] as Map<String, dynamic>),
    sugar: json['sugar'] == null
        ? null
        : Nutriment.fromJson(json['sugar'] as Map<String, dynamic>),
    fiber: json['fiber'] == null
        ? null
        : Nutriment.fromJson(json['fiber'] as Map<String, dynamic>),
    proteins: json['proteins'] == null
        ? null
        : Nutriment.fromJson(json['proteins'] as Map<String, dynamic>),
    sodium: json['sodium'] == null
        ? null
        : Nutriment.fromJson(json['sodium'] as Map<String, dynamic>),
    salt: json['salt'] == null
        ? null
        : Nutriment.fromJson(json['salt'] as Map<String, dynamic>),
    energy: json['energy'] == null
        ? null
        : Nutriment.fromJson(json['energy'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NutritionFactsToJson(NutritionFacts instance) =>
    <String, dynamic>{
      'servingSize': instance.servingSize,
      'calories': instance.calories?.toJson(),
      'fat': instance.fat?.toJson(),
      'saturatedFat': instance.saturatedFat?.toJson(),
      'carbohydrate': instance.carbohydrate?.toJson(),
      'sugar': instance.sugar?.toJson(),
      'fiber': instance.fiber?.toJson(),
      'proteins': instance.proteins?.toJson(),
      'sodium': instance.sodium?.toJson(),
      'salt': instance.salt?.toJson(),
      'energy': instance.energy?.toJson(),
    };

Nutriment _$NutrimentFromJson(Map<String, dynamic> json) {
  return Nutriment(
    unit: json['unit'] as String,
    perServing: json['perServing'],
    per100g: json['per100g'],
  );
}

Map<String, dynamic> _$NutrimentToJson(Nutriment instance) => <String, dynamic>{
      'unit': instance.unit,
      'perServing': instance.perServing,
      'per100g': instance.per100g,
    };

NutrientLevels _$NutrientLevelsFromJson(Map<String, dynamic> json) {
  return NutrientLevels(
    salt: json['salt'] as String?,
    saturatedFat: json['saturatedFat'] as String?,
    sugars: json['sugars'] as String?,
    fat: json['fat'] as String?,
  );
}

Map<String, dynamic> _$NutrientLevelsToJson(NutrientLevels instance) =>
    <String, dynamic>{
      'salt': instance.salt,
      'saturatedFat': instance.saturatedFat,
      'sugars': instance.sugars,
      'fat': instance.fat,
    };

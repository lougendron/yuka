import 'package:json_annotation/json_annotation.dart';

part 'nutrition.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  final String barcode;
  final String? name;
  final String? altName;
  final String? picture;
  final String? quantity;
  final List<String>? brands;
  final List<String>? manufacturingCountries;
  //final ProductNutriscore? nutriScore;
  //@JsonKey(fromJson: extractNovaScore)
  //final ProductNovaScore? novaScore;
  //@JsonKey(name: 'ecoScoreGrade')
  //final ProductEcoScore? ecoScore;
  /*final List<String>? ingredients;
  final List<String>? traces;
  final List<String>? allergens;
  final Map<String, String>? additives;
  final NutrientLevels? nutrientLevels;
  final NutritionFacts? nutritionFacts;
  final bool? ingredientsFromPalmOil;*/

  Product({
    required this.barcode,
    this.name,
    this.altName,
    this.picture,
    this.quantity,
    this.brands,
    this.manufacturingCountries,
    /*this.nutriScore,
    this.novaScore,
    this.ecoScore,
    this.ingredients,
      this.traces,
      this.allergens,
      this.additives,
      this.nutrientLevels,
      this.nutritionFacts,
      this.ingredientsFromPalmOil*/
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutritionFacts {
  final String servingSize;
  final Nutriment? calories;
  final Nutriment? fat;
  final Nutriment? saturatedFat;
  final Nutriment? carbohydrate;
  final Nutriment? sugar;
  final Nutriment? fiber;
  final Nutriment? proteins;
  final Nutriment? sodium;
  final Nutriment? salt;
  final Nutriment? energy;

  NutritionFacts(
      {required this.servingSize,
      this.calories,
      this.fat,
      this.saturatedFat,
      this.carbohydrate,
      this.sugar,
      this.fiber,
      this.proteins,
      this.sodium,
      this.salt,
      this.energy});

  factory NutritionFacts.fromJson(Map<String, dynamic> json) =>
      _$NutritionFactsFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionFactsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Nutriment {
  final String unit;
  final dynamic perServing;
  final dynamic per100g;

  Nutriment({required this.unit, this.perServing, this.per100g});

  factory Nutriment.fromJson(Map<String, dynamic> json) =>
      _$NutrimentFromJson(json);

  Map<String, dynamic> toJson() => _$NutrimentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NutrientLevels {
  final String? salt;
  final String? saturatedFat;
  final String? sugars;
  final String? fat;

  NutrientLevels({this.salt, this.saturatedFat, this.sugars, this.fat});

  factory NutrientLevels.fromJson(Map<String, dynamic> json) =>
      _$NutrientLevelsFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientLevelsToJson(this);
}

/*@JsonSerializable(explicitToJson: true)
enum ProductNutriscore {
  @JsonValue('A')
  A,
  @JsonValue('B')
  B,
  @JsonValue('C')
  C,
  @JsonValue('D')
  D,
  @JsonValue('E')
  E
}
*/
//@JsonSerializable(explicitToJson: true)
//enum ProductNovaScore { group1, group2, group3, group4 }
/*
@JsonSerializable(explicitToJson: true)
enum ProductEcoScore {
  @JsonValue('A')
  A,
  @JsonValue('B')
  B,
  @JsonValue('C')
  C,
  @JsonValue('D')
  D,
  @JsonValue('E')
  E
}
*/

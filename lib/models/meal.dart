import 'package:flutter/foundation.dart';

// PL Dart odwzorowywyje to jako liczby
// EU Dart maps this as numbers
enum Complexity {
  Simple, // dla Dart to po prostu 0
  Challenging, // dla Dart to po prostu 1
  Hard, // dla Dart to po prostu 2
}

// PL To samo robimy z określeniem wartości (ceny) posiłku
// EU We do the same with determining the value (price) of the meal
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;

  final int duration;

  // PL potrzebujemy tego aby określić poziom trudności, używamy do tego enum aby uniknąć błędu podczas pisania kodu
  // EN we need this to determine the difficulty level, we use an enum for this to avoid an error when writing the code
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
        @required this.categories,
        @required this.title,
        @required this.imageUrl,
        @required this.ingredients,
        @required this.steps,
        @required this.duration,
        @required this.complexity,
        @required this.affordability,
        @required this.isGlutenFree,
        @required this.isLactoseFree,
        @required this.isVegan,
        @required this.isVegetarian,
      });


}
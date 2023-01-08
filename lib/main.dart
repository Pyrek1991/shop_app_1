import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/filters_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // PL domyślne ustawienie fitrów przy uruchamianiu aplikacji
  // EN default setting for fiters at application start-up
  Map<String, bool> _fiters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };


  // TODO Ta  metoda musi być wywołana z poziomu FiltersScreen
  // PL Metoda, która nie zwróci niczego, prócz ustawione filtry
  // EN A method that will return nothing but the set filters
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _fiters = filterData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.yellow,
          canvasColor: Color.fromRGBO(128, 128, 128, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              )),
        ),
        // home: CategoriesScreen(),
        initialRoute: '/',
        // default is '/',
        routes: {
          '/': (ctx) => TabsScreen(),
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
          FiltersScreen.routeName: (ctx) => FiltersScreen(_setFilters),
        },
        onGenerateRoute: (settings) {
          print(settings.arguments);
          /*if(settings.name == '/meal-detail') {
          return ...;
        } else if(settings.name == '/something-else') {
          return ...;
        }
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);*/
        },
        // PL to jest jak strona 404 przy tworzeni ston internetowych, pokazuje coś na ekrenia jak aplikacja nie działa
        // EN it is like a 404 page when creating web pages, it shows something on ekrenia as the application does not work
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (ctx) => CategoriesScreen(),
          );
        });
  }
}

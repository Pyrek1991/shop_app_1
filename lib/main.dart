import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.grey,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
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
        home: CategoriesScreen(),
        routes: {
          CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
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

import 'package:flutter/material.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routedName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // const CategoryMealsScreen(this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryModels = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Text(categoryModels[index].title);
          }),
          itemCount: categoryModels.length,
        ));
  }
}

import 'package:flutter/material.dart';


class RecipesDetails extends StatelessWidget {
  const RecipesDetails({super.key, required this.recipeId});
  final int recipeId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [],),),
    );
  }
}

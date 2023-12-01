import 'package:flutter/material.dart';

import '../../domain/entity/detailed_recipe.dart';
import 'expandable_list.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.recipe,
  });

  final FullRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              recipe.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center, // Title Style
            ),
            Image.network(
              recipe.image, // Replace with your image url
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.lightBlue[100], // Primary Color
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Ingredients:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ), // Subtitle Style
                  ),
                  ExpandableListView(items: recipe.extendedIngredients),
                  const SizedBox(height: 16),
                  const Text(
                    'Instructions:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ), // Subtitle Style
                  ),
                  Text(
                    recipe.summary,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ), // Text Style
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

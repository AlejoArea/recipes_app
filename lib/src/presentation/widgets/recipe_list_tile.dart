import 'package:flutter/material.dart';

import '../../config/utils/argument_routes.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.id,
    required this.logoPath,
  });

  final String title;
  final String imagePath;
  final int id;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      elevation: 5,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/recipe_details',
                arguments: RoutesArguments(recipeId: id, imagePath: logoPath),
              );
            },
            child: Image.network(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

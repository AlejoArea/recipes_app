import 'package:flutter/material.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.id,
  });

  final String title;
  final String imagePath;
  final int id;

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
                arguments: id,
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

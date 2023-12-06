import 'package:flutter/material.dart';

import '../../domain/entity/detailed_recipe.dart';
import 'expandable_list.dart';

class Details extends StatefulWidget {
  const Details({
    super.key,
    required this.recipe,
  });

  final FullRecipe recipe;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutQuart,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward().whenComplete(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              widget.recipe.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center, // Title Style
            ),
            SizeTransition(
              sizeFactor: _animation,
              axis: Axis.horizontal,
              axisAlignment: -1,
              child: Image.network(
                widget.recipe.image, // Replace with your image url
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
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
                  ExpandableListView(items: widget.recipe.extendedIngredients),
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
                    widget.recipe.summary,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ), // Subtitle Style
                  ),
                  Text(
                    widget.recipe.instructions,
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

import 'package:flutter/material.dart';
import '../widgets/container_homepage_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(
          'Home Page Recipes',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/recipe_list',
                  );
                },
                child: const ContainerTileHomePage(
                  titleText: 'Cook Something New Everyday',
                  subtitleText: 'Look what to cook today in just one click!',
                  color: Colors.red,
                  imagePath: 'assets/images/foodiev2.png',
                ),
              ),
              const ContainerTileHomePage(
                titleText: 'Random recipe!',
                subtitleText: 'Click here for a random recipe for today!',
                color: Colors.lightGreen,
                imagePath: 'assets/images/questionmark.png',
              ),
              const ContainerTileHomePage(
                titleText: 'Developers',
                subtitleText: 'Hualiang He & Alejo Area',
                color: Colors.lightBlueAccent,
                imagePath: 'assets/images/underconstruction.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

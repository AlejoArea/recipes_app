import 'package:flutter/material.dart';
import '../widgets/home_screen_list_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RecipeApp',
        ),
      ),
      body: HomeScreenListView(),
    );
  }
}

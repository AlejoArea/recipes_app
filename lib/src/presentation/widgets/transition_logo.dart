import 'package:flutter/material.dart';

class LoadingToList extends StatefulWidget {
  const LoadingToList({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<LoadingToList> createState() => _LoadingToListState();
}

class _LoadingToListState extends State<LoadingToList>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
          child: Image.asset(widget.imagePath),
        ),
      ),
    );
  }
}

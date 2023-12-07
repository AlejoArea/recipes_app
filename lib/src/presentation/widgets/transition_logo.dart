import 'package:flutter/material.dart';


class TransitionLogo extends StatefulWidget {
  const TransitionLogo({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<TransitionLogo> createState() => _TransitionLogoState();
}

class _TransitionLogoState extends State<TransitionLogo>
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

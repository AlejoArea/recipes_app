import 'package:flutter/material.dart';

class ContainerTileHomePage extends StatelessWidget {
  const ContainerTileHomePage(
      {super.key,
      required this.titleText,
      this.color,
      required this.subtitleText,
      this.imagePath = ''});

  final String titleText;
  final Color? color;
  final String subtitleText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 200,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    titleText,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    subtitleText,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Image.asset(imagePath),
          ],
        ),
      ),
    );
  }
}

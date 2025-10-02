import 'package:avanced_animation/dismissible_widget.dart';
import 'package:avanced_animation/dots_loading_animation.dart';
import 'package:avanced_animation/interactive_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DotsLoadingAnimation(),
        Tasks(),
        InteractiveWidget(),
      ],
    );
  }
}

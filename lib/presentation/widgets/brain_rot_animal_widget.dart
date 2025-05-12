import 'package:flutter/material.dart';
import 'package:siu_final/data/data.dart';


class BrainRotAnimalWidget extends StatelessWidget {
  const BrainRotAnimalWidget({
    super.key,
    required this.brainRotAnimal,
  });

  final BrainRotAnimal brainRotAnimal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          brainRotAnimal.name,
          style: const TextStyle(
            color: Colors.yellowAccent,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 8),
        Image.network(brainRotAnimal.imageUrl),
      ],
    );
  }
}

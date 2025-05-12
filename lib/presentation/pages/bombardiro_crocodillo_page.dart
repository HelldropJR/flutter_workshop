import 'package:flutter/material.dart';
import 'package:siu_final/domain/domain.dart';
import 'package:siu_final/presentation/presentation.dart';

class BombardiroCrocodilloPage extends StatelessWidget {
  const BombardiroCrocodilloPage({super.key});

  @override
  Widget build(BuildContext context) {
    final brainRotAnimals = BombardiroFriendsRepository().getBombardiroFriends();

    return Column(
      children: [
        Container(
          key: const Key("titleContainer_bombardiroPage"),
          color: Colors.teal,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.only(top: 24.0, bottom: 36.0),
            child: Center(
              child: Text(
                "Brain Rot Friends",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w900,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.pink,
          height: 3,
          width: double.infinity,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: brainRotAnimals.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade300,
                    border: Border.all(
                      width: 8,
                      color: const Color(0xff729876),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: BrainRotAnimalWidget(brainRotAnimal: brainRotAnimals[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

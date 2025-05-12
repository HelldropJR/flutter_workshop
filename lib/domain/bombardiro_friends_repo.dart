import 'package:siu_final/data/data.dart';

final _brainRotAnimals = [
  BrainRotAnimal(
    name: "Bombardiro Crocodillo",
    imageUrl:
    "https://static.wikia.nocookie.net/brainrotnew/images/1/10/Bombardiro_Crocodilo.jpg/revision/latest/scale-to-width/360?cb=20250417102447",
  ),
  BrainRotAnimal(
    name: "Tralalero Tralala",
    imageUrl:
    "https://static.wikia.nocookie.net/brainrotnew/images/a/ac/Tralalero_tralala.jpg/revision/latest?cb=20250321131418",
  ),
  BrainRotAnimal(
    name: "Trippi Troppi",
    imageUrl: "https://static.wikia.nocookie.net/brainrotnew/images/1/14/640.jpg/revision/latest?cb=20250416053733",
  ),
  BrainRotAnimal(
    name: "Brr Brr Patapim",
    imageUrl:
    "https://static.wikia.nocookie.net/brainrotnew/images/f/f7/Brr_Brr_Patapim.png/revision/latest?cb=20250326180223",
  ),
  BrainRotAnimal(
    name: "Garamaraman dan Madudungdung tak tuntung perkuntung",
    imageUrl:
    "https://static.wikia.nocookie.net/brainrotnew/images/e/ed/Garam_dan_mahadu.png/revision/latest?cb=20250429225604",
  ),
];

class BombardiroFriendsRepository {
  List<BrainRotAnimal> getBombardiroFriends() => _brainRotAnimals;
}

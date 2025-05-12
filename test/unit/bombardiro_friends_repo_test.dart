import 'package:flutter_test/flutter_test.dart';
import 'package:siu_final/data/brain_rot_animal.dart';
import 'package:siu_final/domain/bombardiro_friends_repo.dart';

void main() {
  late List<BrainRotAnimal> brainRotAnimals;

  setUp(() {
    brainRotAnimals = BombardiroFriendsRepository().getBombardiroFriends();
  });

  testWidgets('Repo has the correct data test', (WidgetTester tester) async {
    expect(brainRotAnimals[0].name, "Bombardiro Crocodillo");
    expect(brainRotAnimals.length, 5);
  });
}

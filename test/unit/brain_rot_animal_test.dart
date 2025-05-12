import 'package:flutter_test/flutter_test.dart';
import 'package:siu_final/data/data.dart';

void main() {
  testWidgets('Class creates animal correctly test', (WidgetTester tester) async {
    final brainRotAnimal = BrainRotAnimal(name: "Bombardiro Crocodillo", imageUrl: "mockImageUrl");

    expect(brainRotAnimal.name, "Bombardiro Crocodillo");
    expect(brainRotAnimal.imageUrl, "mockImageUrl");
  });
}

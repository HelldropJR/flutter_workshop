import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:siu_final/presentation/pages/bombardiro_crocodillo_page.dart';
import 'package:siu_final/presentation/widgets/widgets.dart';

void main() {
  setUpAll(() => HttpOverrides.global = null);

  group('Bombardiro Crocodillo Page', () {
    testWidgets('is created correctly test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: BombardiroCrocodilloPage()));
      await tester.pumpAndSettle();

      final bombardiroFinder = find.byWidgetPredicate(
        (widget) => widget is BrainRotAnimalWidget && widget.brainRotAnimal.name == "Bombardiro Crocodillo",
      );

      final tungTungTungTungTungSahurFinder = find.byWidgetPredicate(
        (widget) => widget is BrainRotAnimalWidget && widget.brainRotAnimal.name == "Tung Tung Tung Tung Tung Sahur",
      );

      final titleFinder = find.byWidgetPredicate(
        (widget) => widget is Text && widget.data == "Brain Rot Friends",
      );

      final containerFinder = find.byKey(const Key("titleContainer_bombardiroPage"));

      expect(titleFinder, findsOneWidget);
      expect(containerFinder, findsOneWidget);
      expect(bombardiroFinder, findsOneWidget);
      expect(tungTungTungTungTungSahurFinder, findsNothing);
    });
  });
}

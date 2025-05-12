import 'package:flutter/material.dart';

import 'presentation/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SIUUUUUUU'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Good morning IST'),
          actions: [
            IconButton(
              icon: const Icon(Icons.baby_changing_station),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SiuPage(title: "SIUUUUUUUUU")),
                );
              },
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'About'),
              Tab(text: 'Bombardiro Crocodillo & Friends'),
              Tab(text: 'John Cena'),
              Tab(text: 'Links'),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) => const TabBarView(
            children: [
              AboutPage(),
              BombardiroCrocodilloPage(),
              JohnCenaPage(),
              LinksPage(),
            ],
          ),
        ),
      ),
    );
  }
}

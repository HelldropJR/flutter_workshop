import 'package:flutter/material.dart';

class SiuPage extends StatefulWidget {
  const SiuPage({super.key, required this.title});

  final String title;

  @override
  State<SiuPage> createState() => _SiuPageState();
}

class _SiuPageState extends State<SiuPage> with TickerProviderStateMixin {
  double _value = 0;
  double rotation = 0;

  void _incrementCounter() {
    setState(() {
      _value++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _value--;
    });
  }

  int _calculateVelocity() {
    const defaultVelocity = 10000;
    var acceleration = 1000 * _value.toInt();

    if (acceleration >= defaultVelocity) {
      acceleration = defaultVelocity - 100;
    }

    return defaultVelocity - acceleration;
  }

  Animation<double> _setAnimation() {
    AnimationController controller;
    Animation<double> animation;

    controller = AnimationController(
      vsync: this, // vsync is set to this for performance reasons
      duration: Duration(milliseconds: _calculateVelocity()),
    );

    // Create a Tween for the rotation angle
    animation = Tween<double>(
      begin: rotation, // Start rotation angle
      end: (2 * 3.141) + rotation,
    ).animate(controller);

    // Repeat the animation indefinitely
    controller.repeat();

    return animation;
  }

  @override
  Widget build(BuildContext context) {
    final animation = _setAnimation();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Semantics(
              value: "Cristiano Ronaldo goes SIUUUUUUUUU on us all.",
              child: Container(
                color: Colors.red,
                width: 250,
                height: 250,
                child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    rotation = animation.value;

                    return Transform.rotate(
                      angle: animation.value,
                      child: Image.network(
                        "https://images.fineartamerica.com/images/artworkimages/medium/3/cristiano-ronaldo-siuuu-celebration-goal-kirania-finest-transparent.png",
                      ),
                    );
                  },
                ),
              ),
            ),
            const Text(
              'Velocity:',
            ),
            Text(
              '${_value.toInt() * 10}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 36,
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Slider(
                min: -10.0,
                max: 10.0,
                divisions: 20,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

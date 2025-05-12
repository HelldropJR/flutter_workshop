import 'package:flutter/material.dart';

class JohnCenaPage extends StatefulWidget {
  const JohnCenaPage({super.key});

  @override
  State<JohnCenaPage> createState() => _JohnCenaPageState();
}

class _JohnCenaPageState extends State<JohnCenaPage> {
  bool? selectedOption = false;
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://www.pwmania.com/wp-content/uploads/2020/07/fans-crowd.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          top: 36,
          bottom: 0,
          left: 12,
          child: Center(
            child: AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: Image.network(
                'https://www.pngall.com/wp-content/uploads/2016/03/John-Cena-U-Cant-See-Me-PNG.png',
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "U C Me?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'True',
                  style: TextStyle(color: Colors.white),
                ),
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                horizontalTitleGap: 0.0,
                leading: Radio(
                  value: true,
                  groupValue: selectedOption,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      opacityLevel = 0.0;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  'False',
                  style: TextStyle(color: Colors.white),
                ),
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                horizontalTitleGap: 0.0,
                leading: Radio(
                  value: false,
                  groupValue: selectedOption,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                      opacityLevel = 1.0;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

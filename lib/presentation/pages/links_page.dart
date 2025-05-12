import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final links = [
      'Flutter main page - https://flutter.dev/',
      'Widgets - https://docs.flutter.dev/ui/widgets',
      'Basic widgets - https://docs.flutter.dev/ui/widgets/basics',
      'Flutter development - https://flutter.dev/development',
      'Learning resources - https://docs.flutter.dev/reference/learning-resources',
      'Flutter Repo - https://github.com/flutter/flutter',
      'Package Repo - https://pub.dev/',
      'Showcase BMW - https://flutter.dev/showcase/bmw',
      'BMW Tech Repo - https://github.com/bmw-tech',
      'Join us @CTW - https://join.criticaltechworks.com/jobs/5382460-flutter-craftsman'
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            "Helpful links:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: links.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
                child: Linkify(
                  onOpen: (link) async {
                    if (await canLaunchUrlString(link.url)) {
                      await launchUrlString(link.url);
                    } else {
                      throw 'Could not launch $link';
                    }
                  },
                  text: links[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//TODO JR
//Unit tests - at least test main & 1 sub-page

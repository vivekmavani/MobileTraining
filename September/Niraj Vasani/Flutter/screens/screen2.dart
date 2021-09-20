import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.blue,
          title: const Text(
            'Flutterclutter: Overflow',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 2.5, bottom: 2.5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                ),
                onPressed: () {
                  print('Opening ${news[index].title}');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ListTile(
                    leading: Image.asset(
                      news[index].image,
                      fit: BoxFit.cover,
                      width: screenWidth * 0.13,
                      height: screenHeight * 0.08,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          news[index].title,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          news[index].published,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        news[index].subtitle,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Data {
  final String image;
  final String title;
  final String subtitle;
  final String published;

  Data({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.published,
  });
}

final List<Data> news = [
  Data(
    image: 'images/flutter_clutter.png',
    title: 'Flutter Clutter',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate ligula ac pretium commodo',
    published: 'Just now',
  ),
  Data(
    image: 'images/google.png',
    title: 'Google News',
    subtitle:
        'Integer ut tincidunt ex. Donec hendrerit libero ipsum, in luctus tellus vestibulum eget. In hac habitasse platea dictumst',
    published: 'Just now',
  ),
  Data(
    image: 'images/flutter.png',
    title: 'Flutter News',
    subtitle: 'Flutter now runs on SpaceX ships',
    published: 'Just now',
  ),
  Data(
    image: 'images/patavinus.png',
    title: 'Patavinus',
    subtitle: 'New version is built with Flutter',
    published: 'Just now',
  ),
  Data(
    image: 'images/local_news.jpg',
    title: 'Local news',
    subtitle: "Flensburg's beer sales on the rise",
    published: 'Just now',
  ),
  Data(
    image: 'images/travel.png',
    title: 'Travel blog',
    subtitle: 'Travel industry now slowly recovers',
    published: 'Just now',
  ),
  Data(
    image: 'images/ui_blog.png',
    title: 'UI blog',
    subtitle: 'Study: Most UI elements are too high',
    published: 'Just now',
  ),
  Data(
    image: 'images/computer_blog.png',
    title: 'Imaginary Computer Blog',
    subtitle:
        'Aenean ut commodo diam. Donec tincidunt suscipit interdum. Nullam at mi id dolor scelerisque convallis at sed leo',
    published: 'Just now',
  ),
];

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     'Flutter Screen 1',
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        body: ListView(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/lake.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 18),
              padding: EdgeInsets.only(left: 15, right: 18, top: 8, bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Kanderstag, Switzerland',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 25,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        '41',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: screenWidth * 0.11,
                right: screenWidth * 0.11,
                top: 7,
              ),
              padding: EdgeInsets.only(bottom: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBouttonColumn(
                    icon: Icons.call,
                    name: 'CALL',
                  ),
                  _buildBouttonColumn(
                    icon: Icons.near_me,
                    name: 'ROUTE',
                  ),
                  _buildBouttonColumn(
                    icon: Icons.share,
                    name: 'SHARE',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: 7,
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
                'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes.'
                ' A gondola ride from Kandersteg, followed by a half-hour walk through '
                'pastures and pine forest, leads you to the lake, which warms to 20 degrees'
                ' Celsius in the summer. Activities enjoyed here include rowing, and riding'
                'the summer toboggan run.',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
            ),
            // imageSection,
            // titleSection,
            // buttonSection,
            // textSection,
          ],
        ),
      ),
    );
  }
}

Expanded _buildBouttonColumn({required IconData icon, required String name}) {
  return Expanded(
    child: Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: Colors.lightBlue,
          ),
          onPressed: () {},
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      ],
    ),
  );
}

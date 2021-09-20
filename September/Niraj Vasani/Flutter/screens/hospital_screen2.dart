import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Abdominal Pain - Female',
      'Abdominal Pain - Male',
      'Acne',
      'Animal or Human Bite',
      'Antibiotics: When Do They Help',
      'Arm Injury',
      'Arm Pain',
      'Asthma Attake',
      'Athlete\'s Foot',
      'Arm Injury',
      'Acne',
      'Arm Pain',
      'Asthma Attake',
      'Antibiotics: When Do They Help',
      'Abdominal Pain - Male'
    ];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_outlined),
              iconSize: 30,
              color: Colors.purple,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: TextFormField(
              cursorColor: Colors.purple,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                hintText: "Enter your practice's name",
                hintStyle: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.purple,
              onPressed: () {},
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.transparent.withOpacity(0.4),
                  BlendMode.dstATop,
                ),
                image: AssetImage(
                  'images/ho_background.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.27,
              right: screenWidth * 0.27,
              top: screenHeight * 0.14,
            ),
            child: Image.asset(
              'images/usfc_logo.png',
            ),
          ),
          Container(
            color: Colors.white,
            margin:
                EdgeInsets.only(top: screenHeight * 0.3, left: 15, right: 15),
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                    thickness: 1,
                    indent: 15,
                    endIndent: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    onPressed: () {},
                    child: ListTile(
                      title: Text(
                        items[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

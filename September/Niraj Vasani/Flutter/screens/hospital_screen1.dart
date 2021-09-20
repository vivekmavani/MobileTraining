import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
            splashRadius: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.more_vert_outlined),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
              splashRadius: 25,
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
                  image: AssetImage(
                    'images/ho_background.png',
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.27,
              right: screenWidth * 0.27,
              top: screenHeight * 0.13,
            ),
            child: Image.asset(
              'images/usfc_logo.png',
              color: Colors.white,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: screenHeight * 0.62, left: 13, right: 13),
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 3,
              crossAxisSpacing: 13,
              mainAxisSpacing: 13,
              childAspectRatio: 2.2,
              children: [
                _buttonForGridView('SICK?'),
                _buttonForGridView('ABOUT US'),
                _buttonForGridView('NEWS'),
                _buttonForGridView('OFFICE INFO'),
                _buttonForGridView('PAGE MY DOCTOR'),
                _buttonForGridView('PORTAL'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: screenHeight * 0.10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _bottomBarButton(Icons.call_outlined, Colors.blue, Colors.white),
            VerticalDivider(
              width: 1,
              thickness: 1,
            ),
            _bottomBarButton(Icons.map_outlined, Colors.blue, Colors.white),
            VerticalDivider(
              width: 1,
              thickness: 1,
            ),
            _bottomBarButton(Icons.credit_card, Colors.blue, Colors.white),
            VerticalDivider(
              width: 1,
              thickness: 1,
            ),
            _bottomBarButton(
                Icons.notifications_none_outlined, Colors.white, Colors.blue),
          ],
        ),
      ),
    );
  }
}

ElevatedButton _buttonForGridView(String text) {
  return ElevatedButton(
    onPressed: () {
      print('$text Selected');
    },
    style: ElevatedButton.styleFrom(
      elevation: 5,
      primary: Colors.white,
      onPrimary: Colors.indigo,
    ),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.indigo,
        fontSize: 15,
      ),
    ),
  );
}

Expanded _bottomBarButton(IconData icon, Color iconColor, Color buttonColor) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        primary: Colors.indigo,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: () {},
      child: Icon(
        icon,
        color: iconColor,
        size: 30,
      ),
    ),
  );
}

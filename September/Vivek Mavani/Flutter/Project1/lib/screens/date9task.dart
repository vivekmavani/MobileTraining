import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dateninetaskone extends StatelessWidget {
  const Dateninetaskone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.png"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(//sizedbox
                width: 100.0,
                height: 100.0,
                child: FittedBox(//chnage
                  child: Image.asset('assets/appicon.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buttonswithcolumn('SICK ?','OFFICE INFO'),
                    _buttonswithcolumn('ABOUT US','PAGE MY DOCTOR'),
                    _buttonswithcolumn('NEWS','PORTAL'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.call, 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.location_city, 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.credit_card_sharp, 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.notifications_none, 3),
            label: '',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}

Widget _buildIcon(IconData iconData, int index) => Container(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      child: Material(
        color: _getBgColor(index),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData),
          ],
        ),
      ),
    );

Color _getBgColor(int index) => 3 == index ? Colors.blue : Colors.white;

Widget _buttons(String text) => Container(
      width: 100.0,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.purple),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize:Size(100,50)
        ),
      ),
    );

Widget _buttonswithcolumn(String text1,String text2) => Container(
      width: 120.0,
      child: Column(
        children: [
          _buttons(text1),
          SizedBox(height: 10,),
          _buttons(text2),
        ],
      ),
    );

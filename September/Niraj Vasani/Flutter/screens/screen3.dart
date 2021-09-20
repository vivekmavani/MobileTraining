import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.grey.shade700,
          ),
          title: Image.asset(
            'images/picsy_logo.png',
            height: kToolbarHeight,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              splashColor: Colors.pink.shade100,
              splashRadius: 25,
              icon: Icon(
                Icons.notifications_on_outlined,
                size: 30,
                color: Colors.grey.shade600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  primary: Colors.pink.shade400,
                ),
                onPressed: () {},
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 27,
              onPressed: () {},
              splashColor: Colors.pink.shade100,
              splashRadius: 25,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.pink.shade300),
                child: Text(
                  'Drawer',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Card(
                child: InkWell(
                  onTap: () {
                    print('Create Now');
                  },
                  splashColor: Colors.pink.shade100,
                  child: Image.network(
                    'https://www.picsy.in/images/app/New-Dashboard/share-album.jpg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: singleButtonBuilder(
                'Photo Books',
                'Convert photos to printed photo books',
                '499',
                'https://www.picsy.in/images/app/New-App/dashboard/Photobook.jpg',
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: doubleButtonBuilder(
                'Photo Calender',
                '500',
                'https://www.picsy.in/images/app/New-App/dashboard/Calendar.jpg',
                'Photo Prints',
                '160',
                'https://www.picsy.in/images/app/New-App/dashboard/Photoprint.jpg',
                context,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: singleButtonBuilder(
                'Canvas Prints',
                'Photos on cabvas for walls',
                '500',
                'https://www.picsy.in/images/app/New-App/dashboard/Canvas.jpg',
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/gift_card.png',
                height: 24,
                width: 24,
              ),
              label: 'Gift Card',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/my_designs.png',
                height: 24,
                width: 24,
              ),
              label: 'My Designs',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/my_orders.png',
                height: 24,
                width: 24,
              ),
              label: 'My Orders',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/shared_album.png',
                height: 24,
                width: 24,
              ),
              label: 'Albums',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/earn_rewards.png',
                height: 24,
                width: 24,
              ),
              label: 'Rewards',
            ),
          ],
        ),
      ),
    );
  }
}

Card singleButtonBuilder(
    String title, String subtitle, String price, String imageUrl) {
  return Card(
    elevation: 5,
    child: InkWell(
      onTap: () {},
      splashColor: Colors.pink.shade100,
      child: Column(
        children: [
          Image.network(
            imageUrl,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'From ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹$price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.pink.shade400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
            child: Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.pink.shade400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Row doubleButtonBuilder(String title1, String price1, String imageUrl1,
    String title2, String price2, String imageUrl2, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: (screenWidth * 0.5) - 15,
        child: Card(
          elevation: 5,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.pink.shade100,
            child: Column(
              children: [
                Image.network(
                  imageUrl1,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        title1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                  child: Row(
                    children: [
                      Text(
                        'From ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '₹$price1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.pink.shade400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      SizedBox(
        width: (screenWidth * 0.5) - 15,
        child: Card(
          elevation: 5,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.pink.shade100,
            child: Column(
              children: [
                Image.network(
                  imageUrl2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 8, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        title2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                  child: Row(
                    children: [
                      Text(
                        'From ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '₹$price2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.pink.shade400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}

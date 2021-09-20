import 'package:dio/dio.dart';
import 'package:first_app/models/for_screen_api_call/yearbook.dart';
import 'package:first_app/networking/for_screen_api_call/ApiRequest.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
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
                color: Colors.grey.shade700,
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
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey.shade700,
              ),
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
        body: apiResponseCall(context),
      ),
    );
  }
}

FutureBuilder<YearbookData> apiResponseCall(BuildContext context) {
  var url = 'http://www.demoaws.picsy.in/api';
  final apiCall = ApiClient(Dio(), baseUrl: url);
  return FutureBuilder<YearbookData>(
    future: apiCall.getYearbookDatas(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final YearbookData? datas = snapshot.data;
        return _buildListView(context, datas!);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildListView(BuildContext context, YearbookData datas) {
  final double screenWidth = MediaQuery.of(context).size.width;
  final double screenHeight = MediaQuery.of(context).size.width;
  return ListView.builder(
    itemCount: datas.response.data.length,
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 8),
        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  datas.response.data[index].imgHttpThumb,
                  height: screenHeight * 0.35,
                  width: screenWidth * 0.35,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        datas.response.data[index].yearbookName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        datas.response.data[index].yearbookDescription?.desc ??
                            "N/A",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                        maxLines: 3,
                        // softWrap: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Pages :',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Min 20 - Max 80',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Est. Delivery ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            '5-7 working days',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 5, top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    datas.response.data[index].yearbookDescription?.price ??
                        "N/A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey.shade700,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: 19,
                            ),
                            Text(
                              ' Preview',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink.shade400,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.create_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              ' Create',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

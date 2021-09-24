import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit_prac/api_service.dart';
import 'package:retrofit_prac/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch data',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Parsing'),
      ),
      body: _buildBody(context),
    );
  }
}

FutureBuilder<Album> _buildBody(BuildContext context) {
  final client = ApiService(Dio());
  return FutureBuilder<Album>(
    future: client.fetchAlbum(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final List<Datum>? post = snapshot.data!.response!.data;
        return _buildPosts(context, post!);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildPosts(BuildContext context, List<Datum> post) {
  return ListView.builder(
    itemCount: post.length,
    padding: EdgeInsets.all(8),
    itemBuilder: (context, index) {
      return Card(
        elevation: 4,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.network(
                      post[index].imgHttpThumb!,
                      height: 120.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post[index].yearbookName!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            post[index].yearbookDescription!.desc!,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Pages : ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Min20 - Max-80'),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Est.Delivery',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(' 5-7 working days'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    post[index].yearbookDescription!.price!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye),
                          label: Text('Preview'),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                              primary: Colors.white),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.create),
                          label: Text('Create'),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.pink,
                              primary: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

//post[index].yearbookName!,
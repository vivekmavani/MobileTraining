import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;
import 'package:retrofittrial/network/apiservice/api_service.dart';
import 'package:retrofittrial/network/model/respons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildbody(context),
    );
  }
}

FutureBuilder<Album> _buildbody(BuildContext context) {
  final client = ApiService(dio.Dio());
  return FutureBuilder<Album>(
      future: client.fetchAlbum(),
      builder: (context, snapshot) {
        try {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<Data> posts = snapshot.data!.response!.data;
            return coverTypes(context, posts);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        } on dio.DioError catch (e) {
          if (e.type == DioErrorType.response) {
            print('catched');
          }
          if (e.type == DioErrorType.connectTimeout) {
            print('check your connection');
          }
          if (e.type == DioErrorType.receiveTimeout) {
            print('unable to connect to the server');
          }
          if (e.type == DioErrorType.other) {
            print('Something went wrong');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      });
}

Widget coverTypes(BuildContext context, List<Data> posts) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(),
    body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(12),
          clipBehavior: Clip.hardEdge,
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                //image ----
                Row(
                  children: [
                    FittedBox(
                      child: Image.network(
                        posts[index].img_http_thumb,
                        height: 100,
                        width: 100,
                      ),
                    ),

                    //written details
                    details(posts, index)
                  ],
                ),

                const Divider(),

                //Below part
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //price details
                    Container(
                      child: Text(
                        posts[index].yearbook_description.price,
                      ),
                    ),

                    //buttons
                    Container(
                      child: Row(
                        children: [
                          //button1
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey,
                                fixedSize: const Size(70, 50)),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Icon(Icons.visibility, color: Colors.white),
                                Text('Preview',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),

                          const SizedBox(width: 2),

                          //button2
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pink,
                                fixedSize: const Size(70, 50)),
                            onPressed: () {},
                            child: Column(
                              children: const [
                                Icon(Icons.create, color: Colors.white),
                                Text('Preview',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );
}

Widget details(List<Data> posts, int index) {
  return Column(
    children: [
      Text(posts[index].yearbook_name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      Text(posts[index].yearbook_description.desc,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
      // const Text('Pages:',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 )),
      Text(posts[index].yearbook_description.size,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
      const Text('Est. Delivery',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      const Text('5-7 working days',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
    ],
  );
}

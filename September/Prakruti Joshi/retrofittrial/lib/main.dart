import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
          if (e.type == dio.DioErrorType.response) {
            print('catched');
          }
          if (e.type == dio.DioErrorType.connectTimeout) {
            print('check your connection');
          }
          if (e.type == dio.DioErrorType.receiveTimeout) {
            print('unable to connect to the server');
          }
          if (e.type == dio.DioErrorType.other) {
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
      drawer: Drawer(), 
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.notifications_none_outlined),
          Padding(
            padding: EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              child: Text('Chat'),
            ),
          ),
          Icon(Icons.more_vert),
        ],
        iconTheme: IconThemeData(color: Colors.black87),
        title: Image.asset(
          'assets/appicon.png',
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
      ),
      body: 
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView.builder(itemBuilder: (context,index)
        {
          const Padding(padding: EdgeInsets.all(20));
          return
            Card(
                margin: const EdgeInsets.all(5),
                clipBehavior: Clip.hardEdge,
                child:    
                Container(
                  padding: const EdgeInsets.all(8),
                  child:
                     Column(
                       children: [

                         //image ---
                         Row(
                           children: [
                             FittedBox(
                              child: Image.network(
                                  posts[index].img_http_thumb, 
                                    height: 100.0,
                                    width: 100.0,
                                    fit: BoxFit.cover,
                              ),   
                             ),
                            const SizedBox(width: 10),
                             //written details
                            details(posts, index) ,
                           ],
                         ),
                        
                         const Divider(),
                        
                        //Below part
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                       
                             //price details
                             Expanded(
                               flex:1,
                               child: 
                             Container(
                               child: 
                               Text(
                                 posts[index].yearbook_description.price,
                                 style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                               ),
                             ),
                             ),
                             
                            const SizedBox(width: 45),
                            //buttons
                          
                            Expanded(
                              flex:2,
                              child: 
                              SizedBox(
                                child: 
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [

                                  //button1
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                                    onPressed: () {},
                                    child: 
                                      Row(
                                        children:const [
                                          Icon(Icons.visibility, color: Colors.white),
                                          Text('Preview', style: TextStyle(color: Colors.white)),
                                        ],
                                      ), 
                                  ),
                                  
                                    const SizedBox(width:10),

                                    //button2
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(primary: Colors.pink),
                                      onPressed: () {},
                                      child: 
                                        Row(
                                          children:const [
                                            Icon(Icons.create, color: Colors.white),
                                            Text('Create', style: TextStyle(color: Colors.white)),
                                          ],
                                        ), 
                                      ),

                                  ],
                                ),
                             ),
                            ),
                            
                           ],
                         ),
                       ],
                     ),
                  ),
             );
           
        }
      ),
      ),
    );
  }


Widget details(List<Data> posts, int index)
{
  return Expanded(child: 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        posts[index].yearbook_name, 
        style: const TextStyle(
          fontWeight: FontWeight.bold,
           fontSize: 18),
          ),

      const SizedBox(height: 8),
      
      Text(
        posts[index].yearbook_description.desc,
         style: const TextStyle(
           fontWeight: FontWeight.normal, 
           fontSize:12,
           color: Colors.grey
            ),
           ),

     const SizedBox(height: 5),

      Row(
        children: 
        const [
        Text(
          "Pages: ", 
           style: TextStyle(
             fontWeight: FontWeight.bold, 
             fontSize:12
             ),
             ),

          Text(
            "MIN 20 - MAX 80",  
            style: TextStyle(
              fontWeight: FontWeight.normal,
               fontSize:12, color: Colors.grey
               ),
               ),
        ]
      ),

      const SizedBox(height: 5),

      Row(
        children:
        const [
      Text(
        'Est. Delivery ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
           fontSize: 12 ),
          ),

      Text(
        '5-7 working days',
         style: TextStyle(
           fontWeight: FontWeight.normal, 
           fontSize:12, color: Colors.grey
           ),
           ),
        ]
      ),
  ],
  ),
  );
}
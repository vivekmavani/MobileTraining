
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofittrial/bloc/photobook_bloc.dart';
import 'package:retrofittrial/network/model/respons.dart';
import 'package:retrofittrial/screens/picsyhomepage.dart';
import 'package:retrofittrial/screens/individuaalscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    BlocProvider.of<PhotobookBloc>(context).fetchphotobook();

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: BlocBuilder<PhotobookBloc, PhotobookState>(
          builder: (context, state) {
             if(state is! PhotobookLoading) {
               return const Center(child: CircularProgressIndicator());
             }else
               {
                  print("Done");
                  final posts = (state as PhotobookLoading).album;
                  return coverTypes(context, posts.response!.data);
               }
  },
),
          color: Colors.grey.shade200,
        ),
      ),
    );
  }
}

Widget coverTypes(BuildContext context, List<Data> posts) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration( color: Colors.pink),
              child: Text('Welcome User'), 
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Picsyhomepage()),
                  );
              },
            ),
            ListTile(
              title: const Text('Photobook ideas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), 
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          const Icon(Icons.notifications_none_outlined),
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IndividualScreen(post : posts[index],index: index );
              }));  
            },
          child:
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
                            details(posts[index], index) ,
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
                ),
              );  
            }
          ),
        ),
      );
    }

Widget details(Data posts, int index){
  return Expanded(child: 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        posts.yearbook_name, 
        style: const TextStyle(
          fontWeight: FontWeight.bold,
           fontSize: 18),
          ),

      const SizedBox(height: 8),
      
      Text(
        posts.yearbook_description.desc,
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

/*class IndividualScreen extends StatelessWidget {

  const IndividualScreen(Data posts, {Key? key}) : super(key: key);
  // ignore: recursive_getters
  Data get posts => posts;

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
    appBar: AppBar(
      title : Text(posts.yearbook_name),
      backgroundColor: Colors.pink,
    ),
    body: 
    Column(
      children: [

        Center(
          child:
            Image.network(
              posts.img_http_thumb, 
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),  
        ), 
        const SizedBox(width: 20),
      Text(posts.yearbook_description.desc),
    ],
    ),
  );
  }
}*/
// ignore: non_constant_identifier_names

/*Widget IndividualScreen ( Data post, int index) {

  return Scaffold(
    appBar: AppBar(
      title : Text(post.yearbook_name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        Row(children: [
       ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
          onPressed: () {},
          child: 
            const Text('Create', style: TextStyle(color: Colors.white), textAlign:TextAlign.center),
        ),
        const SizedBox(width:10),
        const Icon(Icons.more_vert, color: Colors.black),
        ],
        ),
      ],
      backgroundColor: Colors.white,
    ),
    body:   
      ListView(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              FittedBox(
                child: 
                  Image.network(post.yearbook_banner),
                  fit:BoxFit.fitWidth,
              ),
              
              const Padding( padding: EdgeInsets.all(10)),
              Center(
                child:
                  Text(post.app_preview_description),
              ),

              //gridblock(post.pages[index], index),
              

            ],
          ),
        ],
      )
  );
}

Widget gridblock ( Pages pg, int index) {

  return GridView.count(
    crossAxisCount: 2,
    children:[
      Column(children: [
       Center(
        child: 
          Image.network(pg.image_data[index].thumb),
        ),

        Text(pg.image_data[index].page_id),

        ],
      ),
    ], 
  );
}*/
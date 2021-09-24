import 'package:api_task/Stream/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../book_model.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BookCubit(),
      child: BookView(),
    );
  }
}

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookCubit>(context).fetchbook();
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<BookCubit, BookState>(
          builder: (context, state) {
            try {
              if (state is! BookProgress) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              else {
                final posts = (state).bookResponse;
                return _buildListView(context, posts.response!.data);
              }
            } catch (e) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}

Widget _buildListView(BuildContext context, List<Data> post) {
  return ListView.builder(
    itemCount: post.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DisplayItemScreen(post: post[index], index: index);
          }));
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          elevation: 4,
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Hero(
                        tag: "R$index",
                        child: Image.network(
                          post[index].imgHttpThumb,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post[index].yearbookName.toString(),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(post[index].yearbookDescription.desc,
                                overflow: TextOverflow.fade,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Pages :",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " ${post[index].pages.length.toString()}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Est. Delivery ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '5-7 Working days',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        post[index].yearbookDescription.price.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      Container(
                        child: Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text(
                                "Preview",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              icon: const Icon(
                                Icons.remove_red_eye_sharp,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black45,
                                  textStyle: TextStyle(
                                    color: Colors.white70,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: Text(
                                "Create",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(
                                Icons.edit,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pinkAccent,
                                  textStyle: TextStyle(
                                    color: Colors.white70,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class DisplayItemScreen extends StatelessWidget {
  const DisplayItemScreen({Key? key, required this.post, required this.index})
      : super(key: key);

  final Data post;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.yearbookName,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Hero(
                tag: "R$index",
                child: Image.network(
                  post.imgHttpThumb,
                  width: MediaQuery.of(context).size.width * 3,
                  height: 300,
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              post.yearbookDescription.desc,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

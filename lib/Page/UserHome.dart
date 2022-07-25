// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/widget/bubble_stories.dart';
import 'package:instagram/widget/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);
  final List people = [
    'Amirreza',
    'Omid',
    'Abas',
    'Reza',
    'Majid',
    'Professor',
    'flutter',
    'Dart'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.favorite)),
                Icon(Icons.share),
              ],
            )
          ]),
        ),
        body: Column(
          children: [
            //Stories
            SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (ctx, index) {
                      return BubbleStories(text: people[index]);
                    })),
            //Posts
            Expanded(
                child: ListView.builder(
                    itemCount: people.length,
                    itemBuilder: (ctx, index) {
                      return UserPostWidget(text: people[index]);
                    }))
          ],
        ));
  }
}

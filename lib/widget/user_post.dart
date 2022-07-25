// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class UserPostWidget extends StatelessWidget {
  final String text;
  const UserPostWidget({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //profile photo
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey.shade300,
        ),
        //below the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.favorite),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(Icons.comment)),
                  const Icon(Icons.share),
                ],
              ),
              const Icon(Icons.bookmark),
            ],
          ),
        ),
        //comments
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Row(
            children: [
              const Text('Liked by'),
              const Text(
                ' Dart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and'),
              const Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //captions
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 16),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Amirreza ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'flutter tutorial mobile app development computer science software engineering dart programming java...')
              ],
            ),
          ),
        )
      ],
    );
  }
}

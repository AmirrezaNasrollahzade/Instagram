import 'package:flutter/material.dart';

class GridCustomWidget extends StatelessWidget {
  const GridCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.deepPurple.shade100,
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 3,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.purple.shade100,
            ),
          );
        });
  }
}

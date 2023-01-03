import 'package:flutter/material.dart';

class NameWithInon1 extends StatelessWidget {
  const NameWithInon1({super.key, required this.name, required this.Images});
  final String name;
  final String Images;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.network(Images),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ));
  }
}

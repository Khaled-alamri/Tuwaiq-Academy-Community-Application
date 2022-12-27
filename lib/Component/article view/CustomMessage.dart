import 'package:flutter/material.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "سارة القوده",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Dec19 - 2022",
                    style: TextStyle(
                      color: Color.fromARGB(255, 226, 226, 226),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/girl.jpg"),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "شكرا جدًا علي هذا التصميم!",
          style: TextStyle(
              color: Colors.black45, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

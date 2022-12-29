import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class nameWithIcon extends StatelessWidget {
  const nameWithIcon({super.key, required this.PostOwnrName, this.authImage});
  final String PostOwnrName;
  final String? authImage;
  // Image

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff4A3A75),
          radius: 20,
          child: ClipOval(
            child: Image.network("") == ""
                ? Icon(
                    Icons.person,
                    size: 10,
                  )
                : Image.network(
                    authImage!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          PostOwnrName,
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class nameWithIcon2 extends StatelessWidget {
  const nameWithIcon2({super.key, required this.PostOwnrName});
  final String PostOwnrName;

  // Image

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff4A3A75),
          radius: 20,
          child: ClipOval(
            child: Image.network("") == ""
                ? Icon(
                    Icons.person,
                    size: 10,
                  )
                : Image.network(
                    "",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          PostOwnrName,
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

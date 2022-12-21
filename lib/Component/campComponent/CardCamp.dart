import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class CardCamp extends StatelessWidget {
  const CardCamp({super.key, required this.NameOfCamp, required this.DateOfCamp, required this.detailsOfCamp, required this.NamberOfStudent});
  final String NameOfCamp;
  final String DateOfCamp;
  final String? detailsOfCamp;
  final String NamberOfStudent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: HexColor("#dbd9de"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset("images/Flutter Logo 1.png")),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    NameOfCamp,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.date_range),
              ),
              Text(
                DateOfCamp,
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 134, 134),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          AutoSizeText(
            detailsOfCamp!,
            style: TextStyle(fontSize: 16),
            maxLines: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageIcon(
                AssetImage("images/Vector.png"),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                NamberOfStudent,
                style: TextStyle(color: HexColor("#117c78"), fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

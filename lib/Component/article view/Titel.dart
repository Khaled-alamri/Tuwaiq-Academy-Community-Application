import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitelInPagePost extends StatelessWidget {
  const TitelInPagePost({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsetsDirectional.all(10),
                    padding: EdgeInsetsDirectional.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: AutoSizeText(
                        title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
  }
}
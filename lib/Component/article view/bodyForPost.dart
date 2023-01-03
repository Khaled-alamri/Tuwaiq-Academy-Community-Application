import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyInPagePost extends StatelessWidget {
  const BodyInPagePost({super.key, required this.Body});
  final String Body;

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsetsDirectional.all(10),
                    padding: EdgeInsetsDirectional.all(15),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                     
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(
                            Body,
                            maxLines: 10,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}
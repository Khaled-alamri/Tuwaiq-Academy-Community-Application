import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Packages/package.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
        image: DecorationImage(
            image: AssetImage(
              "images/Logo.png",
            ),
            opacity: 0.3),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding + 5),
            child: TextFormField(
                cursorColor: Colors.white, 
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(
         
                  Icons.search,
                  color: Colors.white,
                ),
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                labelStyle: const TextStyle(color: Colors.white),
                isDense: true,
                filled: true,
                fillColor: primaryColor.withOpacity(0.3),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
                
              ),
            ),
          )
        ]),
      ),
    );
  }
}

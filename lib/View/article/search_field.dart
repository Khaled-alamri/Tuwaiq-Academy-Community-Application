import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    // Container(
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(colors: [
    //       Color.fromARGB(255, 174, 181, 189),
    //       Color(0xFFE7F0FD),
    //     ]),
    //     image: DecorationImage(
    //         opacity: 0.3,
    //         image: AssetImage("assignment_ui2/assets/images/image.jpeg")),
    //   ),
       Scaffold(
        backgroundColor: Colors.transparent,
        
        body: ListView(children: [
        // backgroundIcon(),
         Stack(children: [
          Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child:Center(
      child: ConstrainedBox(

        constraints: BoxConstraints(
          maxHeight: 300,
          maxWidth: 200
        ),   
                   child: Image.asset("assets/images/logo.png")),
    ),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 174, 181, 189),
        Color(0xFFE7F0FD),
      ]),
    ),),
             Container(
            padding: EdgeInsetsDirectional.only(
              start: 15.0,
              end: 15.0,
              top: 15.0,
              bottom: 15.0,
            ),
            child: 
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                
                hintText: 'What do you want to find?',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                labelStyle: const TextStyle(color: Colors.white),
                isDense: true,
                filled: true,
                fillColor: HexColor("#ACCBEE"),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
         ],)

          // Container(
          //   padding: EdgeInsetsDirectional.only(
          //     start: 15.0,
          //     end: 15.0,
          //     top: 15.0,
          //     bottom: 15.0,
          //   ),
          //   child: 
            
          //   TextFormField(
              
          //     style: const TextStyle(color: Colors.white),
          //     decoration: InputDecoration(
          //       prefixIcon: Icon(Icons.search),
          //       contentPadding:
          //           const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                
          //       hintText: 'What do you want to find?',
          //       hintStyle: TextStyle(
          //         color: Colors.grey,
          //       ),
          //       labelStyle: const TextStyle(color: Colors.white),
          //       isDense: true,
          //       filled: true,
          //       fillColor: HexColor("#ACCBEE"),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       enabledBorder: UnderlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //   ),
          // )
        ]),
      );
  
  }
}

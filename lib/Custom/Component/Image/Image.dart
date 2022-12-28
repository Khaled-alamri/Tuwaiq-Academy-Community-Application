import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
 AddImage({super.key,  this.fileImage,  this.memoryImage});
 

  @override
  State<AddImage> createState() => _AddImageState();
  bool isFile = false;
   File? fileImage;
   Uint8List? memoryImage;
}


class _AddImageState extends State<AddImage> {
  
  @override
  Widget build(BuildContext context) {
     
    return IconButton(onPressed: ()async{

      final picker = ImagePicker();
          final pickedFile = await picker.getImage(source: ImageSource.gallery);

          if (pickedFile == null) return;

          if (widget.isFile) {
            final file = File(pickedFile.path);

            setState(() {
              widget.fileImage = file;
            });
          } else {
            final bytes = await pickedFile.readAsBytes();

            setState(() {
              widget.memoryImage = bytes;
            });
          }
    }, icon: Icon(Icons.image));
  }
}
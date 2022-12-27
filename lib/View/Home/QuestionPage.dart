import 'dart:io';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/Image/Image.dart';
import 'package:final_project/Component/QuestionPage/Radio.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:final_project/Services/Storage/File.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});
  

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}
class _QuestionPageState extends State<QuestionPage> {
  ArticleController C_Article = Get.put(ArticleController());
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2eff6"),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160), // Set this height
        child: SafeArea(
          child: ListView(
            children: [
              CustomTitleWithRadius(
                Title: "اضافة منشور",
                height1: 160,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "عنوان المنشور",
                      style: TextStyle(fontSize: 20),
                    )),
                CustomTextField2(
                  onChanged: (Value) =>C_Article.title=Value ,
                  hintTextShow: "عنوان المشور"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "الوصف",
                      style: TextStyle(fontSize: 20),
                    )),
                CustomTextFieldPost(
                  onChanged: (Value) =>C_Article.body=Value,
                  labelTextShow: "وصف للموضوع المطروح",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 30),
            child: Text(
              "نوع المنشور",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RodioB(
                
                name: "سؤال",
              ),
              RodioB(
                name: "مقال",
              ),
            ],
          ),
          IconButton(
            onPressed: () async {
              addImage();
            },
            icon: Icon(Icons.image),
          ),
          _image != null
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      child: Image.file(
                        _image!,
                        width: 200,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              : Center(child: Text("اضف صوره")),
          filledButton(
              onPressed: () {
                try {
                  // AddImageFile().AddImages(Image: _image!);

                } catch (e) {
                  print(e);
                }
              },
              title: "اضف المنشور"),
              TextButton(
              onPressed: () {
                // getImages();
              },
              child: Text("hfhf"))
        ],
      ),
    );
  }
  

  addImage() async {
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        if (image == null) return;

        final imageTemporary = File(image.path);
        this._image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}


// class AddImage extends StatefulWidget {
//  AddImage({super.key,required this.fileImage,  this.memoryImage});
 

//   @override
//   State<AddImage> createState() => _AddImageState();
//   bool isFile = false;
//    File fileImage;
//    Uint8List? memoryImage;
// }


// class _AddImageState extends State<AddImage> {
  
//   @override
//   Widget build(BuildContext context) {
     
//     return Column(
//       children: [
//         IconButton(onPressed: ()async{

//           final picker = ImagePicker();
//               final pickedFile = await picker.getImage(source: ImageSource.gallery);

//               if (pickedFile == null) return;

//               if (widget.isFile) {
//                 final file = File(pickedFile.path);

//                 setState(() {
//                   widget.fileImage = file;
//                 });
//               } else {
//                 final bytes = await pickedFile.readAsBytes();

//                 setState(() {
//                   widget.memoryImage = bytes;
//                 });
//               }
//         }, icon: Icon(Icons.image)),

//          Image.file(widget.fileImage)
//       ],
//     );
//   }
// }

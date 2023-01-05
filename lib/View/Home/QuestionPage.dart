import 'dart:io';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/Image/Image.dart';
import 'package:final_project/Component/QuestionPage/Radio.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:final_project/Controller/GetImage.dart';
import 'package:final_project/Custom/CustomAppBar.dart';
import 'package:final_project/Packages/package.dart';
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
  PostController C_Article = Get.put(PostController());
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [liftShadow, rightShadow])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          backgroundColor: primaryColor.withOpacity(0.2),
          iconColor: primaryColor,
          height: 70,
          iconImage: "images/Back.png",
          onPressed: () {
            Get.back();
          },
          title: "اضافة منشور",
          titleColor: primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding + 5),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "عنوان المنشور",
                          style: TextStyle(fontSize: 20),
                        )),
                    CustomTextField2(
                        onChanged: (Value) => C_Article.title = Value,
                        hintTextShow: "عنوان المشور"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "الوصف",
                          style: TextStyle(fontSize: 20),
                        )),
                    CustomTextFieldPost(
                      onChanged: (Value) => C_Article.body = Value,
                      labelTextShow: "وصف للموضوع المطروح",
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "نوع المنشور",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RodioB(),
                ],
              ),
              IconButton(
                onPressed: () async {
                  addImage(images: _image);
                },
                icon: Icon(
                  Icons.add_photo_alternate_outlined,
                  size: 40,
                ),
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
                  : Center(
                      child: Text(
                      "اضف صوره",
                      style: TextStyle(fontSize: 20),
                    )),
              SizedBox(
                height: 15,
              ),
              filledButton(
                onPressed: () async{
                  try {
                  await C_Article.addImagesPost(Images: _image);
                    C_Article.MethodCreatePost();
                  } catch (e) {
                    print(e);
                  }
                },
                title: "إرسال",
              )
            ],
          ),
        ),
      ),
    );
  }

  addImage({File? images}) async {
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

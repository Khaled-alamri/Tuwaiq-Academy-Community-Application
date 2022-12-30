import 'dart:io';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/Image/Image.dart';
import 'package:final_project/Component/QuestionPage/Radio.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:final_project/Controller/Camp%20Controller.dart';
import 'package:final_project/Controller/GetImage.dart';
import 'package:final_project/Custom/CustomAppBar.dart';
import 'package:final_project/Services/Storage/File.dart';
import 'package:final_project/Style/Style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class AddingCampScreen extends StatefulWidget {
  const AddingCampScreen({super.key});
  

  @override
  State<AddingCampScreen> createState() => _AddingCampScreen();
}

class _AddingCampScreen extends State<AddingCampScreen> {
  CampController C_Camp = Get.put(CampController());
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          backgroundColor: primaryColor.withOpacity(0.3),
          height: 70,
          iconColor: primaryColor,
          iconImage: "images/AppBarIcon/Back.png",
          onPressed: (){
            Get.back();
          },
          title: "إنشاء معسكر",
          titleColor: primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding + 5),
          child: ListView(
            children: [
              Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "عنوان المعسكر",
                        style: TextStyle(fontSize: 20),
                      )),
                  CustomTextField2(
                      onChanged: (Value) => C_Camp.title = Value,
                      hintTextShow: "عنوان المعسكر"),
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "وصف المعسكر",
                        style: TextStyle(fontSize: 20),
                      )),
                  CustomTextFieldPost(
                    onChanged: (Value) => C_Camp.body = Value,
                    labelTextShow: "اذكر وصف المعسكر",
                  )
                ],
              ),
               SizedBox(height: 25,),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                     "اهداف المعسكر",
                        style: TextStyle(fontSize: 20),
                      )),
                  CustomTextFieldPost(
                    onChanged: (Value) => C_Camp.body = Value,
                    labelTextShow: "اذكر اهداف و تفاصيل المعسكر",
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 30),
                child: Text(
                  " ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              IconButton(
                onPressed: () async {
                  addImage();
                },
                icon: Icon(Icons.add_photo_alternate_outlined, size: 40,),
              ),
              SizedBox(height: 25,),
              // _image != null
              //     ? Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.symmetric(
              //                 horizontal: 30, vertical: 15),
              //             child: Image.file(
              //               _image!,
              //               width: 200,
              //               height: 250,
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ],
              // //       )
              //     : Center(child: Text("اضف صوره")),
              filledButton(
                  onPressed: () {
                    try {
                     // GetImage().AddImages(Image: _image!);
                      C_Camp.MethodCreatePost();
                    } catch (e) {
                      print(e);
                    }
                  },
                  title: "إرسال"),
              TextButton(
                  onPressed: () {
                    // getImages();
                  },
                  child: Text("اضافة"))
            ],
          ),
        ),
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

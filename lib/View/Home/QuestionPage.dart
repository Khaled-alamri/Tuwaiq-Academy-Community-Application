import 'dart:io';
import '../../Packages/package.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
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
          backgroundColor: primaryColor,
          iconColor: primaryColor,
          onPressed: () {
            Get.back();
          },
          title: "إضافة منشور",
          height: 70,
          iconImage: "images/AppBarIcon/Back.png",
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
                    CustomTextField2(hintTextShow: "عنوان المشور"),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RodioB(
                    name: "سؤال",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RodioB(
                    name: "مقال",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () async {
                  addImage();
                },
                icon: Icon(
                  Icons.add_photo_alternate_outlined,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _image != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.file(
                        _image!,
                        width: 200,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Center(
                      child: Text(
                      "اضف صوره",
                      style: TextStyle(fontSize: 18),
                    )),
              SizedBox(
                height: 20,
              ),
              filledButton(
                  onPressed: () {
                    try {
                      AddImages(Image: _image!);
                    } catch (e) {
                      print(e);
                    }
                  },
                  title: "اضف المنشور")
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

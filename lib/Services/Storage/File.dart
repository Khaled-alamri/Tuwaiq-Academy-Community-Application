import 'dart:io';
import 'dart:math';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Component/Image/Image.dart';
import 'package:firebase_storage/firebase_storage.dart';

var instance = FirebaseStorage.instance;

class AddImageFile {
  var instance = FirebaseStorage.instance;
  var getImagePath;
  AddImages({required File Image, required String id}) async {
    try {
      final file = Image;
      final ref = await instance.ref().child("images/$id.png");
      await ref.putFile(file);
    } catch (e) {
      print(e);
    }
  }
}
getImages({required String id}) async {
  try {
    var ref = await FirebaseStorage.instance.ref("images").list();
    ref.items.forEach((element) {
      if (element.name == id + ".png") {
        print(element.name);
      }
    });
  } catch (e) {
    print(e);
  }
}







// String generateRandomString(int length) {
//   final random = Random();
//   const availableChars =
//       'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890kkkkgtdtrhss4r5rtjdxrdtsasdfghjklqwertyuiopzxcvbnmqwertyuiooooooplkjhgfdsa';
//   final randomString = List.generate(length,
//       (index) => availableChars[random.nextInt(availableChars.length)]).join();

//   return randomString;
// }

// Future<String?> getImage({String? image}) async {
//   if (image == null) {
//     return null;
//   }
//   try {
//     final ref = FirebaseStorage.instance.ref().child("images").child("$image");
//     var imgurl = await ref.getDownloadURL();
//     return imgurl;
//   } catch (e) {
//     print(e);
//   }
// }

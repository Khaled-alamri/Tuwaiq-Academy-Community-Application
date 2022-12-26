import 'dart:io';
import 'dart:math';

import 'package:final_project/Packages/package.dart';
import 'package:path/path.dart' as pathImages;
import 'package:final_project/Component/Image/Image.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseStorage instance = FirebaseStorage.instance;
AddImages({required File Image}) async {
  try {
    final file = File(Image.path);
    final ref = FirebaseStorage.instance.ref().child("images");
    await ref.child("${generateRandomString(10)}.png").putFile(file);
    await ref.getDownloadURL();
    //add randm number
  } catch (e) {
    print(e);
  }
}

String generateRandomString(int length) {
  final random = Random();
  const availableChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890kkkkgtdtrhss4r5rtjdxrdtsasdfghjkl;qwertyuiopzxcvbnmqwertyuiooooooplkjhgfdsa';
  final randomString = List.generate(length,
      (index) => availableChars[random.nextInt(availableChars.length)]).join();

  return randomString;
}

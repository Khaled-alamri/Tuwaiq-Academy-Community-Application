import 'dart:io';

import 'package:final_project/Packages/package.dart';
import 'package:path/path.dart' as pathImages;
import 'package:final_project/Component/Image/Image.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseStorage instance = FirebaseStorage.instance;
AddImages({required File Image}) async {
  try {
    final file = File(Image.path);
    final ref = FirebaseStorage.instance.ref().child("images");
    await ref.child(file.path).putFile(file);
    //add randm number
  } catch (e) {
    print(e);
  }
}

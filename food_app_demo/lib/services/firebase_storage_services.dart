// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';

// Reference get firebaseStorage => FirebaseStorage.instance.ref();

// class FirebaseStorageServices extends GetxService {
//   Future<String?> getImage(String? imageName) async {
//     imageName;
//     if (imageName == null) {
//       return null;
//     }
//     try {
//       var urlRef = firebaseStorage
//           .child("foodimage")
//           .child('${imageName.toLowerCase()}.png');
//       var imgUrl = await urlRef.getDownloadURL();
//       return imgUrl;
//     } catch (e) {
//       return null;
//     }
//   }
// }

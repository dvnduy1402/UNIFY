import 'package:food_app_demo/services/firebase_storage_services.dart';
import 'package:get/get.dart';

class RecommendedFoodController extends GetxController {
  final allImages = <String>[].obs;

  @override
  void onReady() {
    // getAllImage();
    testing();
    super.onReady();
  }

  // Future<void> getAllImage() async {
  //   List<String> imageName = [
  //     'product1',
  //     'product2',
  //     'product3',
  //     'product4',
  //     'product5',
  //   ];
  //   try {
  //     for (var img in imageName) {
  //     final imgUrl =  await Get.find<FirebaseStorageServices>().getImage(img);
  //     allImages.add(imgUrl!);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  void testing(){
    print('data is uploading');
  }
}

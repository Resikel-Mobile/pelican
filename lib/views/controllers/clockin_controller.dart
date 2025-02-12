import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ClockInController extends GetxController {
  var imagePath = ''.obs;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }
}
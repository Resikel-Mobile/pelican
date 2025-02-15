import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PickImageController extends GetxController {
  var selectedImage = ''.obs;

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImage.value = image.path;
    }
  }
}

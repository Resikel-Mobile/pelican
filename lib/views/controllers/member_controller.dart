import 'package:get/get.dart';
import 'package:pelican/models/member.dart';

class MemberController extends GetxController {
  var members = <memberModel>[
    memberModel(
        name: "udin",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/bgauth.png"),
    memberModel(
        name: "jamal",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh", time: "08:00", date: "05 feb 2024", imageUrl: null),
    memberModel(
        name: "Lee Jae Wook",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh", time: "08:00", date: "05 feb 2024", imageUrl: null),
    memberModel(
        name: "dobleh",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "dobleh",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png"),
    memberModel(
        name: "barto", time: "08:00", date: "05 feb 2024", imageUrl: null),
    memberModel(
        name: "paulo",
        time: "08:00",
        date: "05 feb 2024",
        imageUrl: "assets/images/cthpp.png")
  ].obs;

  void toggleSelection(int index) {
    members[index].isSelected = !members[index].isSelected;
    members.refresh();
  }

  List<memberModel> get selectedMembers =>
      members.where((m) => m.isSelected).toList();
}

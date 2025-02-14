import 'package:get/get.dart';

class CommunityController extends GetxController {
  var selectedFilter = 'All'.obs;
  var filters = ['All', 'Department', 'Personal'];

  var allMessages = [
    {
      'name': 'Budi Santoso',
      'message': 'quasi architecto beatae vitae dicta sunt explic...',
      'time': '2:30 PM',
      'unread': 0,
      'category': 'All',
      'avatar': 'assets/images/bgauth.png'
    },
    {
      'name': 'Marketing',
      'message': 'Karina: architecto beatae vitae dicta sunt explic...',
      'time': '2:30 PM',
      'unread': 1,
      'category': 'Department',
      'avatar': null
    },
    {
      'name': 'Gerald',
      'message': 'quasi architecto etae vitae dicta sunt explic...',
      'time': '2:30 PM',
      'unread': 0,
      'category': 'Personal',
      'avatar': 'assets/images/bgauth.png'
    },
    {
      'name': 'Ardito',
      'message': 'quasi architecto beatae vitae dicta sunt...',
      'time': '2:30 PM',
      'unread': 2,
      'category': 'Personal',
      'avatar': null
    },
    {
      'name': 'Billie',
      'message': 'Karina: architecto beatae vitae dicta snet...',
      'time': '2:30 PM',
      'unread': 0,
      'category': 'Personal',
      'avatar': null
    },
    {
      'name': 'Field Operations',
      'message': 'quasi architecto beatae vitae dicta sunt...',
      'time': '2:30 PM',
      'unread': 2,
      'category': 'Department',
      'avatar': null
    },
  ].obs;

  var filteredMessages = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    filterMessages();
  }

  void changeFilter(String filter) {
    selectedFilter.value = filter;
    filterMessages();
  }

  void filterMessages() {
    if (selectedFilter.value == 'All') {
      filteredMessages.assignAll(allMessages);
    } else {
      filteredMessages.assignAll(
        allMessages
            .where((msg) => msg['category'] == selectedFilter.value)
            .toList(),
      );
    }
  }

  void searchMessages(String query) {
    if (query.isEmpty) {
      filterMessages();
    } else {
      filteredMessages.assignAll(
        allMessages
            .where((msg) =>
                (msg['name'] as String?)
                    ?.toLowerCase()
                    .contains(query.toLowerCase()) ??
                false)
            .toList(),
      );
    }
  }
}

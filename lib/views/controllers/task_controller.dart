import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TaskController extends GetxController {
  var selectedFilter = 'All'.obs;

  var allTasks = [
    {
      'title': 'Site Inspection Report Submission',
      'category': 'Department A',
      'dueDate': '2025-02-06'
    },
    {
      'title': 'Equipment Maintenance',
      'category': 'Department B',
      'dueDate': '2025-02-06'
    },
    {
      'title': 'Safety Audit',
      'category': 'Department C',
      'dueDate': '2025-02-05'
    },
    {
      'title': 'Team Meeting',
      'category': 'Department B',
      'dueDate': '2025-02-05'
    },
  ].obs;

  var groupedTasks = <String, List<Map<String, String>>> {}.obs;

  @override
  void onInit() {
    super.onInit();
    filterTasks();
  }

  void changeFilter(String filter) {
    selectedFilter.value = filter;
    filterTasks();
  }

  void filterTasks() {
    List<Map<String, String>> tasks;
    if (selectedFilter.value == 'All') {
      tasks = List.from(allTasks);
    } else {
      tasks = allTasks
          .where((task) => task['category'] == selectedFilter.value)
          .toList();
    }
    groupedTasks.assignAll(groupTasksByDate(tasks)); // Pakai assignAll agar langsung ter-update di UI
  }

  Map<String, List<Map<String, String>>> groupTasksByDate(List<Map<String, String>> tasks) {
    Map<String, List<Map<String, String>>> grouped = {};
    for (var task in tasks) {
      String dateKey = DateFormat('MMMM yyyy').format(DateTime.parse(task['dueDate']!));
      if (!grouped.containsKey(dateKey)) {
        grouped[dateKey] = [];
      }
      grouped[dateKey]!.add(task);
    }
    return grouped;
  }
}

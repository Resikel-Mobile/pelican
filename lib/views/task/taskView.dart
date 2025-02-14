import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/task_controller.dart';

class taskView extends StatelessWidget {
  taskView({super.key});
  final TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        shape: CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    'All',
                    'Department A',
                    'Department B',
                    'Department C'
                  ]
                      .map((filter) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ChoiceChip(
                              label: Text(
                                filter,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      controller.selectedFilter.value == filter
                                          ? Colors.red
                                          : Colors.black,
                                ),
                              ),
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color:
                                      controller.selectedFilter.value == filter
                                          ? Colors.red
                                          : Colors.grey,
                                ),
                              ),
                              selected:
                                  controller.selectedFilter.value == filter,
                              onSelected: (isSelected) {
                                if (isSelected) controller.changeFilter(filter);
                              },
                              selectedColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              showCheckmark: false,
                            ),
                          ))
                      .toList(),
                ),
              )),
          // end choice horizontal

          const SizedBox(height: 25),
          Expanded(
            child: Obx(() {
              var groupedTasks = controller.groupedTasks;
              return ListView.builder(
                itemCount: groupedTasks.keys.length,
                itemBuilder: (context, index) {
                  String date = groupedTasks.keys.elementAt(index);
                  List tasks = groupedTasks[date]!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Text(date,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      ...tasks.map((task) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: ListTile(
                              leading:
                                  Image.asset("assets/icons/ic_taskbg.png"),
                              title: Text(task['title']!,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Due ${task['dueDate']}',
                                      style: TextStyle(
                                        color: Color.fromRGBO(13, 24, 41, 0.6),
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Color.fromRGBO(224, 226, 230, 1),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

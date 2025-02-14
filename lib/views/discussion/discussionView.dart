import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelican/views/controllers/community_controller.dart';

class CommunityView extends StatelessWidget {
  CommunityView({super.key});
  final CommunityController controller = Get.put(CommunityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community',
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
          // Filter Tabs
          Obx(() => SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: controller.filters.map((filter) {
                    bool isSelected = controller.selectedFilter.value == filter;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(
                          filter,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: isSelected ? Colors.red : Colors.black,
                          ),
                        ),
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: isSelected ? Colors.red : Colors.grey,
                          ),
                        ),
                        selected: isSelected,
                        onSelected: (isSelected) {
                          if (isSelected) controller.changeFilter(filter);
                        },
                        selectedColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        showCheckmark: false,
                      ),
                    );
                  }).toList(),
                ),
              )),

          const SizedBox(height: 15),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                filled: true,
                fillColor: Color.fromRGBO(250, 250, 250, 1),
                prefixIcon: Image.asset("assets/icons/search.png"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search Messages',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(170, 170, 170, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
              onChanged: (query) => controller.searchMessages(query),
            ),
          ),

          const SizedBox(height: 15),

          // Chat List
          Expanded(
            child: Obx(() {
              var messages = controller.filteredMessages;
              return ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  var message = messages[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: message['avatar'] == null
                          ? Colors.red
                          : Colors.transparent,
                      child: message['avatar'] == null
                          ? Text(message['name'][0],
                              style: TextStyle(
                                color: Colors.white,
                              ))
                          : Image.asset(message['avatar']),
                    ),
                    title: Text(
                      message['name'],
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      message['message'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          message['time'],
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(218, 37, 28, 1)),
                        ),
                        if (message['unread'] > 0)
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(218, 37, 28, 1),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              message['unread'].toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
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

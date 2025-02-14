import 'package:flutter/material.dart';
import 'package:pelican/models/member.dart';

class attendanceLogItem extends StatelessWidget {
  const attendanceLogItem({Key? key, required this.members}) : super(key: key);
  final memberModel members;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: members.imageUrl != null
                ? AssetImage(members.imageUrl!)
                : AssetImage("assets/icons/ic_user.png"),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                members.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Check in on ${members.time}",
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}

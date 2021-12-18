// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_planner_app/widgets/active_projects.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Tasks',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff309397),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            buildCategory(
              icon: Icons.access_time,
              category: 'To Do',
              iconColor: Colors.redAccent,
              taskCount: 5,
              status: 'started',
            ),
            buildCategory(
              icon: CupertinoIcons.slowmo,
              category: 'In Progress',
              iconColor: Colors.orangeAccent,
              taskCount: 1,
              status: 'started',
            ),
            buildCategory(
              icon: Icons.done_all,
              category: 'Done',
              iconColor: Colors.blue,
              taskCount: 18,
              status: 'completed',
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Active Projects',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ActiveProjects(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategory({
    required icon,
    required String category,
    required Color iconColor,
    required int taskCount,
    required String status,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, top: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: iconColor,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '$taskCount tasks now  |  1 $status',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          )
        ],
      ),
    );
  }
}

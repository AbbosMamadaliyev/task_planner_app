// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCardProjects(
                  'Medical App', 9, .25, Colors.deepOrangeAccent),
              _buildCardProjects('Sport App', 40, .75, Colors.lightGreenAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCardProjects('Sport App', 15, .85, Colors.pinkAccent),
              _buildCardProjects('Medical App', 9, .25, Colors.redAccent),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildCardProjects(
    String pName,
    int pHours,
    double percent,
    Color color,
  ) {
    return Container(
      height: 170,
      width: 145,
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CircularPercentIndicator(
              radius: 75.0,
              lineWidth: 7.0,
              animation: true,
              percent: percent,
              center: Text(
                "${percent * 100}%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pName),
              Text('$pHours hours progress'),
            ],
          )
        ],
      ),
    );
  }
}

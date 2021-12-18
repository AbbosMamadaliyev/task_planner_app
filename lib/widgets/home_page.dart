// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

import 'body.dart';
import 'custom_header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DraggableHome(
          headerExpandedHeight: 0.25,
          leading: LeadingIcon(),
          actions: [ActionsIcons()],
          title: TitleAppBar(),
          headerWidget: CustomHeaderWidget(),
          body: [
            Body(),
          ],
          fullyStretchable: true,
          curvedBodyRadius: 0,
          alwaysShowLeadingAndAction: true,
        ),
      ),
    );
  }
}

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bill Gates',
      style: TextStyle(color: Colors.black),
    );
  }
}

class ActionsIcons extends StatelessWidget {
  const ActionsIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.search,
      color: Colors.black,
    );
  }
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.menu,
      color: Colors.black,
    );
  }
}

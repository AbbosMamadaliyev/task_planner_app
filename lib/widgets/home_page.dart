// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

import 'body.dart';
import 'components/actions_icons.dart';
import 'components/custom_header.dart';
import 'components/leading_icon.dart';
import 'components/title_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

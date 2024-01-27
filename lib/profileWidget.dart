import 'package:agaol/profileCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:agaol/bottomBarWidget.dart';
import 'package:agaol/topBarWidget.dart';
import 'package:agaol/bottomBarWidget.dart';
import 'package:agaol/topBarWidget.dart';

class ProfileWidget extends StatefulWidget {

  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBarWidget(title: "DamApp",),
      bottomNavigationBar: BottomBarWidget(),
      body: profileCardWidget(name:"ege", gender: "male", age: 21, preference: "female")
    );
  }
}

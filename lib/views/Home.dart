import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/assets/Colors/Colors.dart';
import 'package:flutter_project/assets/Components/Components.dart';
import 'package:flutter_project/assets/fonts/typo.dart';
import 'package:flutter_project/views/TabbedComponents/AddPlan.dart';
import 'package:flutter_project/views/TabbedComponents/HomePage.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            body:
            TabBarView(children: [
              HomePage(),
              AddPlan(),
              HomePage()
            ]),
            bottomNavigationBar: Component.bottomBar(context)
        )
      )
    );
  }
}

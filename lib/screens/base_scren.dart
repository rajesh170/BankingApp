import 'package:flutter/material.dart';
import 'package:online_banking_app_ui/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_banking_app_ui/screens/home_screen.dart';
import 'card_screen.dart';
import 'package:get/get.dart';
import 'package:online_banking_app_ui/controllers/base_controller.dart';

class BaseScreen extends StatelessWidget {
  final baseController = Get.put(BaseController());
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseController>(builder: (controller) {
      return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(baseController.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.creditCard), label: "Cards"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.cog), label: "Settings"),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.chartBar), label: "Overview")
            ],
            currentIndex: baseController.selectedIndex,
            onTap: (int index) {
              baseController.indexGetter(index);
            }),
      );
    });
  }
}

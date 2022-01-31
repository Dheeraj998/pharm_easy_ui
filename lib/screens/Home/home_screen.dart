import 'package:farm_easy/screens/Health%20care/health_care_screen.dart';
import 'package:farm_easy/screens/Home/home_screen_body.dart';
import 'package:farm_easy/screens/Home/widgets/bottom_navigationbar.dart';
import 'package:farm_easy/screens/account/account_screen.dart';
import 'package:farm_easy/screens/lab%20tests/lab_test_screen.dart';
import 'package:farm_easy/screens/notifications/notification_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [
    HomeScreenBody(),
    HealthCareScreen(),
    LabTestScreen(),
    NotificationScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        toolbarHeight: 50,
        leadingWidth: 40.0,
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(Icons.set_meal),
          ],
        ),
        titleSpacing: 0,
        backgroundColor: Color(0xFFFFFFFF),
        foregroundColor: Color(0xFF10847E),
        actions: [Icon(Icons.shopping_cart), Icon(Icons.rounded_corner)],
        title: Text('PharmEasy',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        elevation: 0,
      ),
      bottomNavigationBar: PharEasyBottomNavigationBar(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext ctx, int updatedIndex, Widget? _) {
              return _pages[updatedIndex];
            }),
      ),
    );
  }
}

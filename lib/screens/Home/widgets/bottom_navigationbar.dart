import 'package:farm_easy/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

class PharEasyBottomNavigationBar extends StatelessWidget {
  const PharEasyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: updatedIndex,
          selectedFontSize: 11.0,
          unselectedFontSize: 11.0,
          onTap: (newIndex) {
            HomeScreen.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Healthcare',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Lab Tests',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }
}

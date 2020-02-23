import 'package:flutter/material.dart';

import 'package:todo_app/home.dart';
import 'package:todo_app/task.dart';
import 'util.dart';


class BottomFormButton extends StatelessWidget {

  const BottomFormButton();


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedLabelStyle: TextStyle(color: CustomColors.BlueDark),
      selectedItemColor: CustomColors.BlueDark,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/save.png',
              width: 25,
            ),
          ),
          title: Text('SAVE'),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/cancel.png',
              width: 25,
            ),
          ),
          title: Text('CANCEL'),
        ),
      ],
    );
  }
}

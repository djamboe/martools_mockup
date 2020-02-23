import 'package:flutter/material.dart';

import 'package:todo_app/appBars.dart';
import 'package:todo_app/bottomNavigation.dart';
import 'package:todo_app/dummyList.dart';
import 'package:todo_app/dummyListClient.dart';
import 'package:todo_app/fab.dart';
import 'package:todo_app/report.dart';
import 'package:todo_app/util.dart';
import 'package:todo_app/weeklyPlan.dart';

class Task extends StatefulWidget {
  Task({Key key}) : super(key: key);

  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                InkWell(
                  child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              child: Image.asset('assets/images/icon-user.png'),
                              decoration: const BoxDecoration(
                                color: CustomColors.YellowBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Weekly Plan',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CustomColors.TextHeaderGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '24 Tasks',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: CustomColors.TextSubHeaderGrey),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.GreyBorder,
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 150.0),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WeeklyPlan()),
                    )
                ),
                InkWell(
                  child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              child: Image.asset('assets/images/icon-briefcase.png'),
                              decoration: const BoxDecoration(
                                color: CustomColors.GreenBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mapping Prospek',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CustomColors.TextHeaderGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '44 Tasks',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: CustomColors.TextSubHeaderGrey),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.GreyBorder,
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 150.0),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DummyList()),
                    )
                ),
                InkWell(
                  child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              child: Image.asset('assets/images/icon-presentation.png'),
                              decoration: const BoxDecoration(
                                color: CustomColors.PurpleBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mapping Client',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CustomColors.TextHeaderGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '45 Tasks',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: CustomColors.TextSubHeaderGrey),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.GreyBorder,
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 150.0),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DummyListClient()),
                    )
                ),
                InkWell(
                  child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              child: Image.asset('assets/images/icon-shopping-basket.png'),
                              decoration: const BoxDecoration(
                                color: CustomColors.OrangeBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Report',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CustomColors.TextHeaderGrey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '54 Tasks',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: CustomColors.TextSubHeaderGrey),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.GreyBorder,
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      height: 150.0),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Report()),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      floatingActionButton: customFab(context),
      bottomNavigationBar:
          BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}

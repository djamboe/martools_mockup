import 'package:flutter/material.dart';
import 'package:todo_app/DetailTaskProspekClient.dart';


import 'package:todo_app/appBars.dart';
import 'package:todo_app/bottomNavigation.dart';
import 'package:todo_app/util.dart';

import 'detailTaskProspek.dart';

class DummyListClient extends StatefulWidget {
  DummyListClient({Key key}) : super(key: key);

  _DummyListState createState() => _DummyListState();
}

class _DummyListState extends State<DummyListClient> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            InkWell(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '2019-11-21',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Visit PT Pertamina',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'CLIENT',
                      style: TextStyle(color: CustomColors.GreenAccent,fontWeight: FontWeight.bold ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.PurpleIcon, Colors.white],
                  ),
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
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailTaskProspekClient()),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '2019-11-21',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Visit Honda Progressive Motor',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'CLIENT',
                      style: TextStyle(color: CustomColors.GreenAccent,fontWeight: FontWeight.bold ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.PurpleIcon, Colors.white],
                  ),
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
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailTaskProspekClient()),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '2019-11-21',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Visit Sinar Mas Group',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'CLIENT',
                      style: TextStyle(color: CustomColors.GreenAccent,fontWeight: FontWeight.bold ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.PurpleIcon, Colors.white],
                  ),
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
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailTaskProspekClient()),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '2019-11-21',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Visit PT Pertamina',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'CLIENT',
                      style: TextStyle(color: CustomColors.GreenAccent,fontWeight: FontWeight.bold ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.PurpleIcon, Colors.white],
                  ),
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
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailTaskProspekClient()),
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '2019-11-21',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        'Visit PT Pertamina',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'CLIENT',
                      style: TextStyle(color: CustomColors.GreenAccent,fontWeight: FontWeight.bold ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.PurpleIcon, Colors.white],
                  ),
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
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailTaskProspekClient()),
              ),
            ),
            SizedBox(height: 15)
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

import 'package:flutter/material.dart';
import 'package:august5th_blog/component/colors.dart';
import 'package:august5th_blog/layout/drawer.dart';

class AugustScaffold extends StatefulWidget {
  @override
  _AugustScaffoldState createState() => _AugustScaffoldState();
}

class _AugustScaffoldState extends State<AugustScaffold>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ["Popular", "Recently", "Suggested"];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY FEED",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: AugustColors.black,
            letterSpacing: 1.1,
          ),
        ),
        elevation: .0,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu, color: AugustColors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AugustColors.green,
              width: 4.0,
            ),
            insets: EdgeInsets.only(right: 52.0),
          ),
          labelStyle: TextStyle(
            fontSize: 15.0,
            letterSpacing: 1.1,
            fontWeight: FontWeight.bold,
          ),
          labelColor: AugustColors.black4,
          unselectedLabelColor: AugustColors.black4,
          labelPadding: EdgeInsets.only(right: 42.0),
          tabs: tabs.map((e) {
            return Tab(
              text: e,
            );
          }).toList(),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: .0, horizontal: 20.0),
            child: Icon(
              Icons.search,
              color: AugustColors.black,
            ),
          ),
        ],
      ),
      drawer: HomeDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 2),
          );
        }).toList(),
      ),
    );
  }
}

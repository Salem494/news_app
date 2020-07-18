import 'package:flutter/material.dart';
import 'package:newsapp/api/authors.dart';
import 'package:newsapp/classes/drawer_nav.dart';
import 'package:newsapp/classes/favourites.dart';
import 'package:newsapp/classes/popular.dart';
import 'package:newsapp/classes/what%20news.dart';
import 'package:newsapp/api/authors.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3,vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text("Expoler"),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search),color: Colors.white,onPressed: (){},),
            IconButton(icon: Icon(Icons.more_vert),color: Colors.white,onPressed: (){},)
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
            Tab(text: "What،s News",),
            Tab(text: "Popular",),
            Tab(text: "Favourites",),
          ],
            controller: _tabController,

          ),
        ),
        body: Center(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              WhatsNews(),
              Popular(),
              Favourites(),
            ],
          ),
        ),
      ) ,
      drawer: NavDrawer(),
    );
  }
}


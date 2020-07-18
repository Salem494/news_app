import 'package:flutter/material.dart';
import 'package:newsapp/classes/favourites.dart';
import 'package:newsapp/classes/popular.dart';
import 'package:newsapp/screens/instgram.dart';
import 'package:newsapp/screens/twitter_feed.dart';

class HeadlineNews extends StatefulWidget {
  @override
  _HeadlineNewsState createState() => _HeadlineNewsState();
}

class _HeadlineNewsState extends State<HeadlineNews>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headline News"),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "Favourites",
            ),
            Tab(
              text: "Popular",
            ),
            Tab(
              text: "Favourites",
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: Center(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Favourites(),
            Popular(),
            Favourites(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('SM'),
              ),
              accountName: Text('Salem Mahrous'),
              accountEmail: Text('Salem.doe@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
            ),

            ListTile(
              leading: Icon(Icons.face),
              title: Text('Twitter'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Twitter(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Instagram'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Instagram(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

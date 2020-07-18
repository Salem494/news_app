import 'package:flutter/material.dart';
import 'package:newsapp/screens/headline_news.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {

  List<String> navMenu =[
          "Explore",
          "Headline News",
           "Read Later",
           "Videos",
           "Photos",
           "Setting",
           "Logout",
  ];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75, left: 20),
        child: ListView.builder(
            itemBuilder: (context,position){
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    navMenu[position],
                    style: TextStyle(color: Colors.grey.shade500,fontSize: 22),),
                  trailing: Icon(Icons.chevron_right),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HeadlineNews(),
                    ));
                  },
                ),
              );
            },
          itemCount: navMenu.length,
        ),
      ),
    );
  }
}

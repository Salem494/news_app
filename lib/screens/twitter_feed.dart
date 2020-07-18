import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Twitter Feed"),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ) ,
      body: ListView.builder(
          itemBuilder: (context, position){
            return Card(
              child: Column(
                children: <Widget>[
                  _cardheader(),
                  _cardbody(),
                  _cardfooter(),

                ],
              ),
            );
          },
        itemCount: 10,
      ),
      drawer: Drawer(),
    );
  }
  Widget _cardheader(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(backgroundColor: Colors.black,radius: 25.0,),
          SizedBox(width: 15),
          Column(
            children: <Widget>[
              Text("Salem @elsalem"),
              Text("Sun, 17May, 2020 "),

            ],
          )
        ],
      ),
    );

  }
  Widget _cardbody(){
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Text("SALEM Mahrous djsdjfde dhfuhvuhisud djifjidof ofap jdfdfju pi iuf"),
        Text("dhfviurdw fcbdrhfv uhfredwui uoi weuru9 ewq q qweue dedfe"),
      ],
    ),
  );
  }
}
  Widget _cardfooter(){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.share),
          SizedBox(width: 8.0),
          Text("290"),
          SizedBox(width: 50.0),
          Row(
            children: <Widget>[
              Text("OPEN"),
              SizedBox(width: 150.0),
              Text("SHARE"),

            ],
          )
        ],
      ),
    ),
  );
  }
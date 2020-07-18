import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Instagram Feed"),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ) ,
      body: ListView.builder(
        itemBuilder: (context, position){
          return Card(
            child: Column(
              children: <Widget>[
                _headercard(),
                _bodycard(),
                _footercard(),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
      drawer: Drawer(),
    );

  }

    Widget _headercard(){
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
            ),
            SizedBox(width: 150,),
            Row(
              children: <Widget>[
              Icon(Icons.favorite,color: Colors.grey.shade500,),
                Text("50")
              ],
            )

          ],
        ),
      );
    }
    Widget _bodycard(){
      return Padding(
        padding: EdgeInsets.only(left: 8.0,bottom: 8.0,top: 10),
        child: Column(
          children: <Widget>[
            Text("SALEM Mahrous  We also beginers nfdjfnruwj "),
            Text("#advance #reto #instagram",style: TextStyle(color: Colors.red.shade200),),
          ],
        ),
      );

    }
    Widget _footercard(){
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.grey.shade500,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Text("20"),
                  SizedBox(width: 8.0),
                  Text("Comment"),
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
            ],
          ),
        ),
      );

    }
}

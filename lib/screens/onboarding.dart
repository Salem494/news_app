import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  List<IconData> icon =[
    Icons.power_settings_new,
    Icons.print,
    Icons.local_post_office,
    Icons.person,
  ];

  List<String> title = [
    "Welcome",
    "print",
    "Local_Post",
    "person",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            PageView.builder(
              itemBuilder:(context ,index){
                return Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width ,
                      color: Colors.blueGrey,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Transform.translate(
                            child: Icon(
                              icon[ index ],
                              color: Colors.white,
                              size: 100,),
                            offset: Offset(0,-100),
                          ),
                          Text(
                            title[ index ],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,

                            ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,right: 40,top: 24),
                            child: Text("qwsnfchuebfgfgd bewedgwyed efrffrgeg erf _",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white,),),
                          )
                        ],
                      ),
                    )
                  ],
                );
              } ,
              itemCount: 4,
            ),
            Transform.translate(
              offset: Offset(0,120),
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,bottom: 5),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text("GET START",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Home(),
                      ));
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}


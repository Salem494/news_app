import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Column(
         children: <Widget>[
           _drawHeader(),
           _topStories(),
         ],
       ),
    );
  }
  Widget _drawHeader(){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Text('SALEM && DHJHU jfdu',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 24,left: 24),
              child: Text('SALEM MAJHDDH && DHJHU jfdu hjhdeffh4hu fdhfdtdyfdebdf cbcbddhkl bfgtryhyghhr',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 10),

              ),
            ),
          ],
        ),
      );
  }
  Widget _topStories(){
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16,left: 16),
              child: Text(
                'Top Stories',
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w600,
               ),
              ),
            ),
          ),
          SizedBox(height: 20),
          _Channel(),
          _Channel(),
          _Channel(),
          _Channel(),
          _Channel(),
          _Channel(),
          SizedBox(child: Text("Recently Update")),
          _drawCard(),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text(
                        "Sports",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  color: Colors.deepOrange,
                  padding: EdgeInsets.all(8.0),
                ),
              ],
            ),
          ),
          _drawCard(),
        ],
      ),

    );
  }
  // ignore: non_constant_identifier_names
  Widget _Channel(){
   return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Row (
              children: <Widget>[
                Container(height: 120,width: 120,color: Colors.black,),
                SizedBox(width: 50),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("The Most Movice were enogh vfjk ",maxLines: 2,),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Salem Mahrous",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900)),
                        SizedBox(width: 15),
                        Icon(Icons.timer),
                        SizedBox(width: 12,),
                        Text('15 min')
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawCard(){
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              width: double.infinity,
              height: MediaQuery.of(context).size.width*0.50,
            ),
          )
        ],
      ),
    );
  }
}


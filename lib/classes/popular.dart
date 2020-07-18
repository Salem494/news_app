import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        // ignore: missing_return
        itemBuilder: (context , position){
           return Card(
             child:_Channel() ,
           );
        },
        itemCount: 20,
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

}


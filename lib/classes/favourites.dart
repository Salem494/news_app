import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position){
        return Card(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _authorRow(),
                SizedBox(height: 10,),
                _newsItemsRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }
  Widget _authorRow(){
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Row(
           children: <Widget>[
             Container(
               height: 50,
               width: 50,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage('assets/mentor.png'),
                   fit: BoxFit.cover,
                 )
               ),
             ),
             SizedBox( width: 12),
             Column(
               children: <Widget>[
                 Text("Salem Mahrous",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.0),),
                 SizedBox(height: 8),
                 Row(
                   children: <Widget>[
                     Text("15 min"),
                     SizedBox(width: 5,),
                     Text("Life Style",style: TextStyle(color: Colors.red),),
                   ],
                 )
               ],
             )
           ],
         ),
         IconButton(icon: Icon(Icons.bookmark_border),onPressed: (){},)
       ],
     );

  }
  Widget _newsItemsRow(){
     return Row(
       children: <Widget>[
         Container (
           padding: EdgeInsets.all(15),
           height: 100,
           width: 100,
           color: Colors.black,
           ),
              SizedBox(width: 20),
            Expanded(
              child: Column(
               children: <Widget>[
                   Text('Salem Mahrous SSE At Computer Scince',style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                   ),),
                  Text('Salem Mahrous SSE  frkfjgrwiwref efiredfjr erieioirfiioe',style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.0,
                    height: 1.5,
                    color: Colors.grey

                  ),),
               ],
           ),
            ),
       ],
     );
  }
}

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:newsapp/api/authors.dart';

class AuthorsAPI{


      // ignore: missing_return
      Future <List<Authors>> fetchAllAuthors() async{

         String allAuthorsApi ="http://worldtimeapi.org/api";
         var response = await http.get(allAuthorsApi);

         if(response.statusCode == 200){
            var data = convert.jsonDecode(response.body);
            print(data);
         }

   }

}
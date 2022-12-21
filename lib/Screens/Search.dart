import 'package:clim/Screens/LoadingByCity.dart';
import 'package:flutter/material.dart';
import '../Components/Glass.dart';
import 'package:http/http.dart';

import 'dart:convert';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var city;
  

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    double A=(size.height*size.width);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width:size.width,
            height: size.height,
            child: Image(image: AssetImage('images/city.jpg'),
            fit: BoxFit.fill,
            ),
          ),
          Glass(size.height*0.9, size.width*0.9),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: size.width*0.7,
                  child: TextField(
                     style: TextStyle(
                       fontFamily: "Righteous",
                       fontSize: A*0.0001,
                     ),
                  onChanged: (value){
                       city=value;
                  },


                  decoration: InputDecoration(
                    hintText: 'Enter Your City',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),


                  ),



                  ),
                ),
              ),
              SizedBox(height: size.height*0.1,),
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(city)));


              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Click Me For ",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Righteous",
                    ),
                  ),
                  Icon(Icons.cloud_outlined,
                    size:70
                  )
                ],
              ),

              )


            ],
          ),





        ],
      ),
    );
  }
}

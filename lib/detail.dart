import 'package:flutter/material.dart';

import 'data.dart';
import 'home.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.pet});
final Pet pet ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
        Container(
        margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(pet.img),fit: BoxFit.fill)
          ),
          height: 300,
          width: MediaQuery.of(context).size.width,
          ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(pet.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Text('${pet.age} year'),
                ),
                            Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Text('Knows Commands'),
                ),
                            Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Text('Weight 23 kg'),
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('daajkkajkfj adfjknjfanjf fajknjf jfanfjfa jfananfsnfldaajkkajkfj adfjknjfanjf fajknjf jfanfjfa jfananfsnfl daajkkajkfj adfjknjfanjf fajknjf jfanfjfa jfananfsnfl'),
          )
      ],),
      bottomNavigationBar: BottomAppBar(child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: (){},
      child: Text('Sign Up For Aquintenses',style: TextStyle(color: Colors.white,fontSize: 20),),),),
    );
  }
}
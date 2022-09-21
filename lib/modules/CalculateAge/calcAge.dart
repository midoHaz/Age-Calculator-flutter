import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'agecal.dart';

class CalculateAge extends StatefulWidget {
  @override
  State<CalculateAge> createState() => _CalculateAgeState();
}

class _CalculateAgeState extends State<CalculateAge> {
  var ageController=TextEditingController();

  var Age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage:NetworkImage("https://s3-symbol-logo.tradingview.com/asia-green-energy-public-company-limited--600.png") ,
          radius:25.0,
        ),
        title: const Text("Age Calculator",style: TextStyle(fontSize: 20.0 ,color:Colors.deepOrange),),
        backgroundColor:HexColor('333754'),
      ),
      body:
      Container(
        height: double.infinity,
        color: HexColor('333754'),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Your Age !!! ❤❤🙂🙂",style: TextStyle(
                    color: Colors.deepOrange,fontSize: 25.0,fontWeight: FontWeight.bold),),
                const SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Image(image:
                    NetworkImage("https://image.shutterstock.com/image-vector/aging-concept-female-male-characters-260nw-436276999.jpg"),
                    ),
                ),
                const SizedBox(height: 25,),
                TextFormField(
                  controller:ageController ,
                  keyboardType: TextInputType.number,
                  decoration:
                   InputDecoration(
                    labelText: "Age",
                    hintText: "Enter your birth year",
                    prefixIcon: const Icon(Icons.person),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                 Text("Your age is $Age years old 😍",style:const TextStyle(
                    color: Colors.deepOrange,fontSize: 25.0,fontWeight: FontWeight.bold,),),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Colors.deepOrange,),
                  child: ElevatedButton.icon(onPressed: (){
                    setState(() {
                      AgeCalculator(int.parse(ageController.text));
                      Age=AgeCalculator.age;
                    });
                  }, icon: const Icon(Icons.calculate), label: const Text("Calculate")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

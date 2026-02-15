import 'dart:math';

import 'package:first_ieee/screens/result.dart';
import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
const calculator({super.key});

@override
State<calculator> createState() => _BMIInputScreenState();
}

class _BMIInputScreenState extends State<calculator> {
int weight =65;
int age= 22;
double height = 180.0;
@override
Widget build(BuildContext context) {
return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        title:  Text("BMI calculator",
          style: TextStyle(
            color: Color(0xFF4CAF50),
            fontSize: 23,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Please modify the value",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 21),),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                         Container(
                          width: 195,
                          height: 400,
                           decoration: BoxDecoration(
                             color: Color(0xFFFFF3E0),
                             borderRadius: BorderRadius.circular(25),
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Weight(kg)",style: TextStyle(fontSize: 20,color: Colors.grey),),
                               Text("$weight",style: TextStyle(fontSize: 55,color: Color(0xFFD48C45)),),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     width: 45,
                                     height: 45,
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       shape: BoxShape.circle,
                                     ),
                                     child: IconButton(
                                         onPressed: (){
                                           setState(() {
                                             weight--;
                                           });
                                         },
                                         icon: Icon(Icons.remove,color: Color(0xFFD48C45),)
                                     ),
                                   ),
                                   SizedBox(width: 15),
                                   Container(
                                     width: 45,
                                     height: 45,
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       shape: BoxShape.circle,
                                     ),
                                     child: IconButton(
                                         onPressed: (){
                                           setState(() {
                                             weight++;
                                           });
                                         },
                                         icon: Icon(Icons.add,color: Color(0xFFD48C45),)
                                     ),
                                   ),
                               ],
                               )
                             ],
                           ),
                        ),
                      SizedBox(width: 10),
                      Container(
                        width: 195,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF3E0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",style: TextStyle(fontSize: 20,color: Colors.grey),),
                          Text("$age",style: TextStyle(fontSize: 55,color: Color(0xFFD48C45)),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        icon: Icon(Icons.remove,color: Color(0xFFD48C45),)
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                    ),
                                    child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        icon: Icon(Icons.add,color: Color(0xFFD48C45),)
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      ),
                    ],
              ),
              SizedBox(height: 50,),
              Container(
                width: 430,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height(cm)",style: TextStyle(color: Colors.grey,fontSize: 18),),
                    Text(height.toStringAsFixed(1),style: TextStyle(color: Color(0xFFD48C45),fontSize: 50),),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 1,
                          activeTrackColor: Colors.transparent,
                          inactiveTrackColor: Colors.transparent,
                          thumbColor: Color(0xFFD48C45),
                          overlayColor: Color(0xFFD48C45).withOpacity(0.2),
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        ),
                        child: Slider(
                            value: height,
                            min: 120,
                            max: 220,
                            onChanged:(value){
                              setState(() {
                                height=value;
                              });
                            }
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(25,(index){
                          return Container(
                            width: 2,
                            height: index % 5 ==0 ? 15: 8,
                            color: Colors.grey,
                          );
                        }
                        )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                    onPressed: (){
                      var bmi = weight / pow(height / 100, 2);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(result: bmi,)));
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                    child:Text("Calculate",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile Card Challenge",),centerTitle: true,),
        body:
            Stack(
              children: [
                Container(color: Colors.white70),
                Center(
                  child:Container(
                    width: 315,
                    height: 430,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 65),
                        CircleAvatar(radius: 64,backgroundImage: AssetImage("images/www.jpg")),
                        SizedBox(height: 14),
                        Text("Flutter Developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                        SizedBox(height: 2),
                        Text("Writing Code & Building Apps",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),),
                        SizedBox(height: 40),
                        Row(children: [
                          SizedBox(width: 40,),
                          CircleAvatar(radius: 27,backgroundColor: Colors.blue[50],foregroundColor: Colors.blue,child: Icon(Icons.facebook),),
                          SizedBox(width: 40,),
                          CircleAvatar(radius: 27,backgroundColor: Colors.green[50],foregroundColor: Colors.green,child: Icon(Icons.phone),),
                          SizedBox(width: 40,),
                          CircleAvatar(radius: 27,backgroundColor: Colors.red[50],foregroundColor: Colors.red,child: Icon(Icons.email),),
                        ],)
                      ],
                    ),
                  )
                )
              ],
            )
    );
  }
}





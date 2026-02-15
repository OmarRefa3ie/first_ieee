import 'package:flutter/material.dart';
import 'package:first_ieee/core/constants.dart';
class ResultScreen extends StatelessWidget {
  ResultScreen({super.key,required this.result});
  final result ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 720,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F8E9),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your BMI:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                  Text(result.toStringAsFixed(1),style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: getBMIResult(result).color)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(getBMIResult(result).title,style: TextStyle(color: getBMIResult(result).color,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30),
                  Text(getBMIResult(result).advice,textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontSize: 22)),
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                  child: Text("Close",
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
      )

    );
  }
}
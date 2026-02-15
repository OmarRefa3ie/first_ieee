import 'package:flutter/material.dart';
import 'package:first_ieee/screens/calculation.dart';
class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _GenderScreenState();
}
class _GenderScreenState extends State<gender> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Color(0xFF4CAF50),
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Please choose your gender ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = true;
                  }
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 335,
                  decoration: BoxDecoration(
                    color: Color(0xFFE8F5E9),
                    borderRadius: BorderRadius.circular(25),
                    border:  Border.all(
                      color: isMale ==true ?Color(0xFF4CAF50):Colors.white,
                      width: 3,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 80,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              setState(() {
                isMale = false;
              }
              );
            },
            child: Container(
              width: double.infinity,
              height: 335,
              decoration: BoxDecoration(
                  color: Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                      color: isMale == false ? Colors.red:Colors.white,
                      width: 3
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    size: 80,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),
                  Text("Female",
                    style: TextStyle(

                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>calculator()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}